import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/core.dart';
import '../data/data.dart';

final historyRepositoryProvider = Provider.autoDispose<IEvaluationRecordRepository>((ref) {
  return EvaluationRecordRepository(dataSource: EvaluationRecordRetrofitDataSource(dio: DioClient.client));
});
