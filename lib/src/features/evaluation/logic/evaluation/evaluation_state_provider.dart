import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/core.dart';
import '../../data/data.dart';
import '../../domain/domain.dart';
import 'evaluation.dart';

final evaluationRepositoryProvider = Provider<IEvaluationRepository>((ref) {
  return EvaluationRepository(dataSource: EvaluationRetrofitDataSource(dio: DioClient.client));
});

final evaluateUseCaseProvider = Provider<EvaluateUseCase>((ref) {
  final repository = ref.watch(evaluationRepositoryProvider);
  return EvaluateUseCase(repository: repository);
});

final evaluationStateProvider = StateNotifierProvider<EvaluationStateNotifier, EvaluationState>((ref) {
  final evaluateUseCase = ref.watch(evaluateUseCaseProvider);
  return EvaluationStateNotifier(ref: ref, evaluateUseCase: evaluateUseCase);
});
