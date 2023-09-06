import '../../../../utils/utils.dart';
import '../../data/data.dart';

class DeleteAllRecordsUseCase extends BaseUseCase<void, void> {
  DeleteAllRecordsUseCase({required IEvaluationRecordRepository repository}) : _repository = repository;

  final IEvaluationRecordRepository _repository;

  @override
  Future<void> call(void params) {
    final response = _repository.deleteAllRecords();
    return response;
  }
}
