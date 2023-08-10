import 'dart:io';

import 'package:dio/dio.dart';

import '../../../core.dart';

class CustomHeadersInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers = {
      'Application': 'x-www-form-urlencoded',
      'Accept': '*/*',
      'Content-Type': 'application/json',
      'Connection': 'keep-alive',
    };

    String? token = await ACDAUser.instance.token;

    if (token != null) {
      options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
    }

    handler.next(options);
  }
}
