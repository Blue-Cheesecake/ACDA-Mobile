import '../../../../../utils/utils.dart';
import '../../../data/data.dart';

abstract interface class IEvaluationRecordDataSource {
  Future<APISimpleMessageModel> saveEvaluationResult({required final SaveResultRequestModel request});
}
