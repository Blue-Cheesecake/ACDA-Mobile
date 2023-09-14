import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../utils/utils.dart';
import '../data.dart';

part 'evaluation_record_retrofit_datasource.g.dart';

@RestApi()
abstract class EvaluationRecordRetrofit {
  @factoryMethod
  factory EvaluationRecordRetrofit(Dio dio) => _EvaluationRecordRetrofit(dio);

  @POST(EvaluationResultBaseURLAPI.saveResult)
  Future<void> saveEvaluationRecord({@Body() required SaveResultRequestModel request});
}

class EvaluationRecordRetrofitDataSource implements IEvaluationRecordDataSource {
  EvaluationRecordRetrofitDataSource({required this.dio});

  final Dio dio;

  @override
  Future<void> saveEvaluationResult({required SaveResultRequestModel request}) {
    final retrofit = EvaluationRecordRetrofit(dio);
    final response = retrofit.saveEvaluationRecord(request: request);
    return response;
  }
}
