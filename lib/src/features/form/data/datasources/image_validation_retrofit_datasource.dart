import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';
import '../../utils/utils.dart';
import '../data.dart';

part 'image_validation_retrofit_datasource.g.dart';

abstract interface class IImageValidationDataSource {
  Future<ImageValidationResultEntity> validate(ImageValidationRequestBodyModel params);
}

@RestApi()
abstract class ImageValidationRetrofit {
  @factoryMethod
  factory ImageValidationRetrofit(Dio dio) => _ImageValidationRetrofit(dio);

  @GET(FormBaseURLAPI.validation)
  Future<ImageValidationResultModel> validate(@Body() ImageValidationRequestBodyModel params);
}

class ImageValidationRetrofitDataSource implements IImageValidationDataSource {
  ImageValidationRetrofitDataSource({required Dio dio}) : _dio = dio;
  final Dio _dio;

  @override
  Future<ImageValidationResultEntity> validate(ImageValidationRequestBodyModel params) {
    final retrofit = ImageValidationRetrofit(_dio);
    final response = retrofit.validate(params);
    return response;
  }
}
