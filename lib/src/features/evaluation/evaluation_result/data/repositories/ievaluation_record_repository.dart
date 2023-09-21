import '../../../../../utils/utils.dart';
import '../../../data/data.dart';

abstract interface class IEvaluationRecordRepository {
  Future<APISimpleMessageModel> saveEvaluationResult({required final SaveResultRequestModel request});
}
