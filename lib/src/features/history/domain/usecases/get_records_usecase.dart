import '../../../../utils/utils.dart';
import '../../data/data.dart';
import '../domain.dart';

class GetRecordsUseCase extends BaseUseCase<EvaluationRecordRequestParams, List<IEvaluationRecordEntity>> {
  GetRecordsUseCase({required IEvaluationRecordRepository repository}) : _repository = repository;

  final IEvaluationRecordRepository _repository;

  @override
  Future<List<IEvaluationRecordEntity>> call(EvaluationRecordRequestParams params) {
    final response = _repository.getRecords(params);
    return response;
  }
}
