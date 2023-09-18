import '../../../../../utils/utils.dart';
import '../data.dart';

class EvaluationRepository implements IEvaluationRepository {
  EvaluationRepository({required this.dataSource});

  final IEvaluationDataSource dataSource;

  @override
  Future<ICommonEvaluationResultEntity> evaluate({required EvaluationRequestModel request}) {
    final response = dataSource.evaluate(request: request);
    return response;
  }
}
