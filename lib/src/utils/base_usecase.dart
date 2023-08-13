import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../core/core.dart';
import 'utils.dart';

abstract class BaseUseCase<P, R> {
  @protected
  Future<R> call(P params);

  Future<Result<R, AnyException>> execute(P params) async {
    final networkManager = ACDANetworkManager();

    try {
      ACDALog.printDebug(message: 'Calling Usecase');

      final response = await call(params);

      ACDALog.printDebug(message: 'Successfully Called UseCase');

      return Success(response);
    } catch (e) {
      ACDALog.printDebug(message: 'Error on Calling UseCase');
      ACDALog.printDebug(message: '$e');

      if (e is DioException) {
        final Response<dynamic>? response = e.response;

        if (response?.data == null) {
          return Failure(ClientException());
        }

        final Map<String, dynamic> responseString = response?.data as Map<String, dynamic>;

        if (!responseString.containsKey('message')) {
          return Failure(ClientException());
        }
        final simpleMessage = APISimpleMessageModel.fromJson(response?.data);
        return Failure(ClientException(messages: simpleMessage.message));
      }

      if (await networkManager.isConnected) {
        return Failure(ServerException());
      }

      ACDALog.printDebug(message: 'Internet is not connected');
      return Failure(InternetConnectionException());
    }
  }
}
