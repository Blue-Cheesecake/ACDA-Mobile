import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../../core/core.dart';
import '../face_validation.dart';

final faceValidationRepositoryProvider = Provider.autoDispose<IFaceValidationRepository>((ref) {
  return FaceValidationRepository(dataSource: FaceValidationRetrofitDataSource(dio: DioClient.client));
});

final validateUseCaseProvider = Provider.autoDispose<ValidateUseCase>((ref) {
  final repository = ref.watch(faceValidationRepositoryProvider);
  return ValidateUseCase(repository: repository);
});

final faceValidationProvider =
    StateNotifierProvider.autoDispose<FaceValidationStateNotifier, FaceValidationState>((ref) {
  final validateUseCase = ref.watch(validateUseCaseProvider);
  return FaceValidationStateNotifier(ref: ref, validateUseCase: validateUseCase);
});
