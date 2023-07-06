import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/core.dart';
import 'utils.dart';

abstract class BaseUseCase<P, R> {
  @protected
  Future<R> call(P params);

  Future<Result<R, Exception>> execute(P params) async {
    final networkManager = ACDANetworkManager();

    try {
      final response = await call(params);

      return Success(response);
    } catch (e) {
      if (await networkManager.isConnected) {
        return Failure(ServerException());
      }
      return Failure(InternetConnectionException());
    }
  }
}
