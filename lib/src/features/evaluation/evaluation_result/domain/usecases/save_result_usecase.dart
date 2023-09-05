import '../../../../../utils/utils.dart';
import '../../data/data.dart';

class SaveResultUseCase extends BaseUseCase<SaveResultRequestModel, void> {
  SaveResultUseCase({required IEvaluationRecordRepository repository}) : _repository = repository;

  final IEvaluationRecordRepository _repository;

  @override
  Future<void> call(SaveResultRequestModel params) async {
    _repository.saveEvaluationResult(request: params);
  }
}
