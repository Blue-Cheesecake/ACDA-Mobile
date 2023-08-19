import '../../domain/domain.dart';
import '../data.dart';

abstract interface class IEvaluationDataSource {
  Future<IEvaluationResultEntity> evaluate({required EvaluationRequestModel request});
}
