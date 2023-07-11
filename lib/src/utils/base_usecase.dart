import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../core/core.dart';
import 'utils.dart';

abstract class BaseUseCase<P, R> {
  @protected
  Future<R> call(P params);

  Future<Result<R, Exception>> execute(P params) async {
    final networkManager = ACDANetworkManager();

    try {
      ACDALog.printDebug(message: 'Calling Usecase');

      final response = await call(params);

      ACDALog.printDebug(message: 'Successfully Called UseCase');
      ACDALog.printDebug(message: 'Response: $response');

      return Success(response);
    } catch (e) {
      ACDALog.printDebug(message: 'Error on Calling UseCase');
      ACDALog.printDebug(message: '$e');

      if (e is DioException) {
        ACDALog.printDioExceptionMessage(e);
      }

      if (await networkManager.isConnected) {
        ACDALog.printDebug(message: 'Server Error');
        return Failure(ServerException());
      }
      ACDALog.printDebug(message: 'Internet is not connected');
      return Failure(InternetConnectionException());
    }
  }
}
