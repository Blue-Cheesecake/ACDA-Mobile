import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/core.dart';
import '../registration.dart';

// Repository
final registrationRepositoryProvider = Provider.autoDispose<IRegistrationRepository>((ref) {
  return RegistrationRepository(dataSource: RegistrationRetrofitDataSource(dio: DioClient.client));
});

// Register Usecase
final registerUseCaseProvider = Provider.autoDispose<RegisterUseCase>((ref) {
  final repository = ref.watch(registrationRepositoryProvider);
  return RegisterUseCase(repository: repository);
});

// State Provider
final registrationStateProvider = StateNotifierProvider.autoDispose<RegistrationStateNotifer, RegistrationState>((ref) {
  final registerUseCase = ref.watch(registerUseCaseProvider);
  return RegistrationStateNotifer(ref: ref, registerUseCase: registerUseCase);
});
