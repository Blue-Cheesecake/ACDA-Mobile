import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../domain/domain.dart';
import '../../utils/utils.dart';
import '../data.dart';

part 'evaluation_record_retrofit_datasource.g.dart';

@RestApi()
abstract class EvaluationRecordRetrofit {
  @factoryMethod
  factory EvaluationRecordRetrofit(Dio dio) => _EvaluationRecordRetrofit(dio);

  @GET(HistoryBaseURLAPI.getRecords)
  Future<List<EvaluationRecordModel>> getRecords(@Queries() EvaluationRecordRequestParams params);
}

class EvaluationRecordRetrofitDataSource implements IEvaluationRecordDataSource {
  EvaluationRecordRetrofitDataSource({required Dio dio}) : _dio = dio;

  final Dio _dio;

  @override
  Future<List<IEvaluationRecordEntity>> getRecords(EvaluationRecordRequestParams params) {
    final retrofit = EvaluationRecordRetrofit(_dio);
    final response = retrofit.getRecords(params);
    return response;
  }
}
