import '../../domain/domain.dart';
import '../data.dart';

abstract interface class IEvaluationRecordRepository {
  Future<List<IEvaluationRecordEntity>> getRecords(EvaluationRecordRequestParams params);
}
