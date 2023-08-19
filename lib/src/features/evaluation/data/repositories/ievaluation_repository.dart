import '../../domain/domain.dart';
import '../data.dart';

abstract interface class IEvaluationRepository {
  Future<IEvaluationResultEntity> evaluate({required EvaluationRequestModel request});
}
