import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/core.dart';
import '../data/data.dart';
import '../domain/domain.dart';
import 'logic.dart';

final saveEvaluationResultRepositoryProvider = Provider.autoDispose<EvaluationRecordRepository>((ref) {
  return EvaluationRecordRepository(dataSource: EvaluationRecordRetrofitDataSource(dio: DioClient.client));
});

final saveEvaluationResultUseCaseProvider = Provider.autoDispose<SaveEvaluationResultUseCase>((ref) {
  final repository = ref.watch(saveEvaluationResultRepositoryProvider);
  return SaveEvaluationResultUseCase(repository: repository);
});

final saveEvaluationResultStateProvider =
    StateNotifierProvider.autoDispose<SaveEvaluationResultStateNotifier, SaveEvaluationResultState>((ref) {
  final saveEvaluationResultUseCase = ref.watch(saveEvaluationResultUseCaseProvider);
  return SaveEvaluationResultStateNotifier(ref: ref, saveEvaluationResultUseCase: saveEvaluationResultUseCase);
});
