import '../../../data/data.dart';

abstract interface class IEvaluationRecordRepository {
  Future<void> saveEvaluationResult({required final SaveResultRequestModel request});
}
