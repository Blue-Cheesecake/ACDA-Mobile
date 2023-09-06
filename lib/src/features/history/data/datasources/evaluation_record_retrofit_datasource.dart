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

  @DELETE(HistoryBaseURLAPI.deleteAllRecords)
  Future<void> deleteAllRecords();

  @DELETE(HistoryBaseURLAPI.deleteSomeRecords)
  Future<void> deleteSomeRecords({@Body() required final DeleteEvaluationRecordRequestModel requestModel});
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

  @override
  Future<void> deleteAllRecords() {
    final retrofit = EvaluationRecordRetrofit(_dio);
    final response = retrofit.deleteAllRecords();
    return response;
  }

  @override
  Future<void> deleteSomeRecords({required DeleteEvaluationRecordRequestModel requestModel}) {
    final retrofit = EvaluationRecordRetrofit(_dio);
    final response = retrofit.deleteSomeRecords(requestModel: requestModel);
    return response;
  }
}
