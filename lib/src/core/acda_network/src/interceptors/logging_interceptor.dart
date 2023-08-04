import 'dart:convert';
import 'package:dio/dio.dart';

import '../../../core.dart';

class LoggingInterceptor extends InterceptorsWrapper {
  final _enabledLogging = false;

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (_enabledLogging) {
      ACDALog.printDebug(
          message:
              'Response Details:\nStatus Code: ${response.statusCode}\nRequest: ${response.requestOptions.method} ${response.requestOptions.uri}\nHeaders: ${response.headers}\nData: ${jsonEncode(response.data)}');
    }
    handler.next(response);
    return handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (_enabledLogging) {
      ACDALog.printDebug(
          message:
              'Error: ${err.message}\nRequest: ${err.requestOptions.method} ${err.requestOptions.uri}\n${err.response != null ? 'Response [${err.response?.statusCode}]: ${jsonEncode(err.response?.data)}' : 'No response data'}');
    }

    handler.next(err);
  }
}
