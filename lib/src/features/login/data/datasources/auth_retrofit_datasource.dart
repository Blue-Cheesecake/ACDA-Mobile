import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../utils/utils.dart';

import '../../domain/domain.dart';
import '../../utils/utils.dart';
import '../data.dart';

part 'auth_retrofit_datasource.g.dart';

@RestApi()
abstract class AuthRetrofit {
  @factoryMethod
  factory AuthRetrofit(Dio dio) => _AuthRetrofit(dio);

  @POST(AuthBaseURLAPI.authenticate)
  Future<HttpResponse> authenticate(@Body() AuthRequestBodyModel params);
}

class AuthRetrofitDataSource implements IAuthDataSource {
  AuthRetrofitDataSource({required this.dio});

  final Dio dio;

  @override
  Future<APIResponse<IAuthTokenEntity>> authenticate(AuthRequestBodyModel request) async {
    final retrofit = AuthRetrofit(dio);
    final response = await retrofit.authenticate(request);
    final statusCode = response.response.statusCode;

    if (statusCode == HttpStatus.ok) {
      return APIAccepted<IAuthTokenEntity>(AuthTokenModel.fromJson(response.data));
    }
    if (statusCode == HttpStatus.badRequest || statusCode == HttpStatus.unauthorized) {
      return APIError(APISimpleMessageModel.fromJson(response.data));
    }

    return APIError(APISimpleMessageModel(message: APIMessages.unknownError));
  }
}
