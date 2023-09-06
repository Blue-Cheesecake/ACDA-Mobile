import '../../../../utils/utils.dart';
import '../../data/data.dart';

class DeleteSomeRecordsUseCase extends BaseUseCase<DeleteEvaluationRecordRequestModel, void> {
  DeleteSomeRecordsUseCase({required IEvaluationRecordRepository repository}) : _repository = repository;

  final IEvaluationRecordRepository _repository;

  @override
  Future<void> call(DeleteEvaluationRecordRequestModel params) {
    final response = _repository.deleteSomeRecords(requestModel: params);
    return response;
  }
}
