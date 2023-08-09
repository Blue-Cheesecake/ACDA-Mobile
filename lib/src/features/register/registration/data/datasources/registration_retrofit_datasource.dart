import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../utils/utils.dart';
import '../../utils/utils.dart';
import '../data.dart';

part 'registration_retrofit_datasource.g.dart';

@RestApi()
abstract class RegistrationRetrofit {
  @factoryMethod
  factory RegistrationRetrofit(Dio dio) => _RegistrationRetrofit(dio);

  @POST(RegistrationBaseURLAPI.register)
  Future<HttpResponse> register({@Body() required RegistrationRequestModel body});
}

class RegistrationRetrofitDataSource implements IRegistrationDataSource {
  RegistrationRetrofitDataSource({required this.dio});

  final Dio dio;

  @override
  Future<APIResponse<APISimpleMessageModel>> register({required RegistrationRequestModel body}) async {
    final retrofit = RegistrationRetrofit(dio);
    final response = await retrofit.register(body: body);
    final simpleMessage = APISimpleMessageModel.fromJson(response.data);

    if (response.response.statusCode != HttpStatus.ok) {
      return APIError(simpleMessage);
    }
    return APIAccepted(simpleMessage);
  }
}
