import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/core.dart';
import '../data/data.dart';
import '../domain/domain.dart';
import 'logic.dart';

// Repo
final detectionResultRepositoryProvider = Provider.autoDispose<IDetectionResultRepository>((ref) {
  return DetectionResultRepository(dataSource: DetectionResultRetrofitDataSource(dio: DioClient.client));
});

// UseCase
final detectionResultUseCaseProvider = Provider.autoDispose<GetDetectionResultUseCase>((ref) {
  final repository = ref.watch(detectionResultRepositoryProvider);
  return GetDetectionResultUseCase(repository: repository);
});

// State
final detectionResultStateProvider =
    StateNotifierProvider.autoDispose<DetectionResultStateNotifier, DetectionResultState>((ref) {
  final getDetectionResultUseCase = ref.watch(detectionResultUseCaseProvider);
  return DetectionResultStateNotifier(getDetectionResultUseCase: getDetectionResultUseCase);
});
