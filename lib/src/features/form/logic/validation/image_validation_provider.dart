import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/core.dart';
import '../../data/data.dart';
import '../../domain/domain.dart';
import 'validation.dart';

// Repo
final imageValidationRepositoryProvider = Provider.autoDispose<IImageValidationRepository>((ref) {
  return ImageValidationRepository(dataSource: ImageValidationRetrofitDataSource(dio: DioClient.client));
});

// UseCase
final imageValidationUseCaseProvider = Provider.autoDispose<ImageValidationUseCase>((ref) {
  final repository = ref.watch(imageValidationRepositoryProvider);
  return ImageValidationUseCase(repository: repository);
});

// StateNotifier
final imageValidationProvider =
    StateNotifierProvider.autoDispose<ImageValidationStateNotifier, ImageValidationState>((ref) {
  final imageValidationUseCase = ref.watch(imageValidationUseCaseProvider);
  return ImageValidationStateNotifier(imageValidationUseCase: imageValidationUseCase);
});
