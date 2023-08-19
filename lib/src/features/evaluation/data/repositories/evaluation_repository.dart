import '../../domain/domain.dart';
import '../data.dart';

class EvaluationRepository implements IEvaluationRepository {
  EvaluationRepository({required this.dataSource});

  final IEvaluationDataSource dataSource;

  @override
  Future<IEvaluationResultEntity> evaluate({required EvaluationRequestModel request}) {
    final response = dataSource.evaluate(request: request);
    return response;
  }
}
