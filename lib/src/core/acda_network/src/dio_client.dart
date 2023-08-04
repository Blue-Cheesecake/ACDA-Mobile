import 'package:dio/dio.dart';

import '../../core.dart';
import 'interceptors/interceptors.dart';

class DioClient {
  DioClient._();

  static final Dio _client = DioClient._()._init();
  static Dio get client => _client;

  Dio _init() {
    Dio dio = Dio(BaseOptions(
      baseUrl: AppConfig.instance.apiURL,
      contentType: 'application/json',
    ));

    dio.interceptors.addAll([CustomHeadersInterceptor(), LoggingInterceptor()]);

    return dio;
  }
}
