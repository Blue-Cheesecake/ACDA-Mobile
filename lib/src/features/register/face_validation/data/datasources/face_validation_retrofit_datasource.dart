import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../utils/utils.dart';
import '../../face_validation.dart';

part 'face_validation_retrofit_datasource.g.dart';

@RestApi()
abstract class FaceValidationRetrofit {
  @factoryMethod
  factory FaceValidationRetrofit(Dio dio) => _FaceValidationRetrofit(dio);

  @GET(FaceValidationBaseURLAPI.validate)
  Future<HttpResponse> validate({@Body() required String faceImage});
}

class FaceValidationRetrofitDataSource implements IFaceValidationDataSource {
  FaceValidationRetrofitDataSource({required this.dio});

  final Dio dio;

  @override
  Future<APIResponse<IFaceValidationResultEntity>> validate({required String faceImageBase64}) async {
    final retrofit = FaceValidationRetrofit(dio);
    final response = await retrofit.validate(faceImage: faceImageBase64);

    if (response.response.statusCode == HttpStatus.badRequest) {
      return APIError(APISimpleMessageModel.fromJson(response.data));
    }
    return APIAccepted(FaceValidationResultModel.fromJson(response.data));
  }
}
