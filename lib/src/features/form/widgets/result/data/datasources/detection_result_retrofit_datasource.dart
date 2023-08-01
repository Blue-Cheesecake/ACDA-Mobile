import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../../utils/utils.dart';
import '../../utils/utils.dart';
import '../data.dart';

part 'detection_result_retrofit_datasource.g.dart';

abstract class IDetectionResultDataSource {
  Future<ICommonDetectionResultEntity> getDetectionResult({required DetectionRequestBodyModel body});
}

@RestApi()
abstract class DetectionResultRetrofit {
  @factoryMethod
  factory DetectionResultRetrofit(Dio dio) => _DetectionResultRetrofit(dio);

  @GET(ResultBaseURLAPI.detect)
  Future<CommonDetectionResultModel> getDetectionResult(@Body() DetectionRequestBodyModel body);
}

class DetectionResultRetrofitDataSource implements IDetectionResultDataSource {
  DetectionResultRetrofitDataSource({required this.dio});

  final Dio dio;

  @override
  Future<ICommonDetectionResultEntity> getDetectionResult({required DetectionRequestBodyModel body}) {
    final retrofit = DetectionResultRetrofit(dio);
    final response = retrofit.getDetectionResult(body);
    return response;
  }
}