import '../data.dart';

abstract interface class IEvaluationRecordDataSource {
  Future<void> saveEvaluationResult({required final SaveResultRequestModel request});
}
