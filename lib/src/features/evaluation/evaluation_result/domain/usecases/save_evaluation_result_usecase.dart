import '../../../../../utils/utils.dart';
import '../../../data/data.dart';
import '../../data/data.dart';

class SaveEvaluationResultUseCase extends BaseUseCase<SaveResultRequestModel, APISimpleMessageModel> {
  SaveEvaluationResultUseCase({required IEvaluationRecordRepository repository}) : _repository = repository;

  final IEvaluationRecordRepository _repository;

  @override
  Future<APISimpleMessageModel> call(SaveResultRequestModel params) async {
    final response = _repository.saveEvaluationResult(request: params);
    return response;
  }
}
