import '../../../../utils/utils.dart';
import '../../data/data.dart';

class EvaluateUseCase extends BaseUseCase<EvaluationRequestModel, ICommonEvaluationResultEntity> {
  EvaluateUseCase({required this.repository});

  final IEvaluationRepository repository;

  @override
  Future<ICommonEvaluationResultEntity> call(EvaluationRequestModel params) {
    final response = repository.evaluate(request: params);
    return response;
  }
}
