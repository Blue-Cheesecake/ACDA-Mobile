import 'package:dio/dio.dart';

import '../../core.dart';

class DioClient {
  static Dio? _client;

  Dio get client {
    _client ??= _init();
    return _client!;
  }

  Dio _init() {
    return Dio(BaseOptions(
      baseUrl: AppConfig.instance.apiURL,
      contentType: 'application/json',
      headers: {
        'Application': 'x-www-form-urlencoded',
        'Accept': '*/*',
        'Content-Type': 'application/json',
        'Connection': 'keep-alive',
      },
    ));
  }
}
