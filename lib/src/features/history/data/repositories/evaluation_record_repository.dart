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
}
