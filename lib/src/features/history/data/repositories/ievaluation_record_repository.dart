import '../../domain/domain.dart';
import '../data.dart';

abstract interface class IEvaluationRecordRepository {
  Future<List<IEvaluationRecordEntity>> getRecords(EvaluationRecordRequestParams params);
  Future<void> deleteAllRecords();
  Future<void> deleteSomeRecords({required final DeleteEvaluationRecordRequestModel requestModel});
}
