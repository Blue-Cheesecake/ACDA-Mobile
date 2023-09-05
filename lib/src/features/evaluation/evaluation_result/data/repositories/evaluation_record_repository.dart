import '../data.dart';

class EvaluationRecordRepository implements IEvaluationRecordRepository {
  EvaluationRecordRepository({required IEvaluationRecordDataSource dataSource}) : _dataSource = dataSource;

  final IEvaluationRecordDataSource _dataSource;

  @override
  Future<void> saveEvaluationResult({required SaveResultRequestModel request}) async {
    _dataSource.saveEvaluationResult(request: request);
  }
}
