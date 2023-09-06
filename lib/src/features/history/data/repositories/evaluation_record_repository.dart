import '../../domain/domain.dart';
import '../data.dart';

class EvaluationRecordRepository implements IEvaluationRecordRepository {
  EvaluationRecordRepository({required IEvaluationRecordDataSource dataSource}) : _dataSource = dataSource;

  final IEvaluationRecordDataSource _dataSource;

  @override
  Future<List<IEvaluationRecordEntity>> getRecords(EvaluationRecordRequestParams params) {
    final response = _dataSource.getRecords(params);
    return response;
  }

  @override
  Future<void> deleteAllRecords() {
    final response = _dataSource.deleteAllRecords();
    return response;
  }

  @override
  Future<void> deleteSomeRecords({required DeleteEvaluationRecordRequestModel requestModel}) {
    final response = _dataSource.deleteSomeRecords(requestModel: requestModel);
    return response;
  }
}
