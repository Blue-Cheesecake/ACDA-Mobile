import '../../../../utils/utils.dart';
import '../data.dart';

abstract interface class IEvaluationRepository {
  Future<ICommonEvaluationResultEntity> evaluate({required EvaluationRequestModel request});
}
