import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/domain.dart';
import '../logic.dart';

final isValidToRegisterUseCaseProvider = Provider.autoDispose<IsValidToRegisterUseCase>((ref) {
  final repository = ref.watch(infoFormRepositoryProvider);
  return IsValidToRegisterUseCase(repository: repository);
});

final registerValidityStateProvider =
    StateNotifierProvider.autoDispose<RegisterValidityStateNotifier, RegisterValidityState>((ref) {
  final isValidToRegisterUseCase = ref.watch(isValidToRegisterUseCaseProvider);
  return RegisterValidityStateNotifier(ref: ref, isValidToRegisterUseCase: isValidToRegisterUseCase);
});
