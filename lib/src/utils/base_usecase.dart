import 'dart:async';

import 'package:flutter/material.dart';

import '../core/core.dart';
import 'utils.dart';

abstract class BaseUseCase<P, R> {
  @protected
  Future<R> call(P params);

  Future<Result<R, Exception>> execute(P params) async {
    final networkManager = ACDANetworkManager();

    try {
      debugPrint('[🐱] Calling UseCase');
      final response = await call(params);
      debugPrint('[🐱] Successfully Called UseCase');

      return Success(response);
    } catch (e) {
      debugPrint('[🐱] Error on Calling UseCase');
      debugPrint('[🐱] $e');
      if (await networkManager.isConnected) {
        return Failure(ServerException());
      }
      return Failure(InternetConnectionException());
    }
  }
}
