import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../utils/utils.dart';
import '../../../data/data.dart';
import '../../utils/utils.dart';
import '../data.dart';

part 'evaluation_record_retrofit_datasource.g.dart';

@RestApi()
abstract class EvaluationRecordRetrofit {
  @factoryMethod
  factory EvaluationRecordRetrofit(Dio dio) => _EvaluationRecordRetrofit(dio);

  @POST(EvaluationResultBaseURLAPI.saveResult)
  Future<APISimpleMessageModel> saveEvaluationRecord({@Body() required SaveResultRequestModel request});
}

class EvaluationRecordRetrofitDataSource implements IEvaluationRecordDataSource {
  EvaluationRecordRetrofitDataSource({required this.dio});

  final Dio dio;

  @override
  Future<APISimpleMessageModel> saveEvaluationResult({required SaveResultRequestModel request}) async {
    final retrofit = EvaluationRecordRetrofit(dio);
    return retrofit.saveEvaluationRecord(request: request);
  }
}
