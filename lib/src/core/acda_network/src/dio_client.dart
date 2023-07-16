import 'package:dio/dio.dart';

import '../../core.dart';

class DioClient {
  DioClient._();

  static final Dio _client = DioClient._()._init();
  static Dio get client => _client;

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
