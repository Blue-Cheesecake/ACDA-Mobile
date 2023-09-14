import '../../../../utils/utils.dart';
import '../data.dart';

abstract interface class IEvaluationDataSource {
  Future<ICommonEvaluationResultEntity> evaluate({required EvaluationRequestModel request});
}
