import '../../../../../utils/utils.dart';
import '../../../data/data.dart';
import '../data.dart';

class EvaluationRecordRepository implements IEvaluationRecordRepository {
  EvaluationRecordRepository({required IEvaluationRecordDataSource dataSource}) : _dataSource = dataSource;

  final IEvaluationRecordDataSource _dataSource;

  @override
  Future<APISimpleMessageModel> saveEvaluationResult({required SaveResultRequestModel request}) async {
    final response = _dataSource.saveEvaluationResult(request: request);
    return response;
  }
}
