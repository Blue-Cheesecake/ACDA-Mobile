import '../../domain/domain.dart';
import '../data.dart';

abstract interface class IEvaluationRecordDataSource {
  Future<List<IEvaluationRecordEntity>> getRecords(EvaluationRecordRequestParams params);
  Future<void> deleteSomeRecords({required final DeleteEvaluationRecordRequestModel requestModel});
}
