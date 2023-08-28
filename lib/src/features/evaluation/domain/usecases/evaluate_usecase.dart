import '../../../../utils/utils.dart';
import '../../data/data.dart';
import '../domain.dart';

class EvaluateUseCase extends BaseUseCase<EvaluationRequestModel, IEvaluationResultEntity> {
  EvaluateUseCase({required this.repository});

  final IEvaluationRepository repository;

  @override
  Future<IEvaluationResultEntity> call(EvaluationRequestModel params) {
    final response = repository.evaluate(request: params);
    return response;
  }
}
