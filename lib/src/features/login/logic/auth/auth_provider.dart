import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/core.dart';
import '../../data/data.dart';
import '../../domain/domain.dart';
import 'auth.dart';

final authRepositoryProvider = Provider<IAuthRepository>((ref) {
  return AuthRepository(dataSource: AuthRetrofitDataSource(dio: DioClient.client));
});

final authenticateUseCaseProvider = Provider.autoDispose<AuthenticateUseCase>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return AuthenticateUseCase(repository: repository);
});

final authProvider = StateNotifierProvider.autoDispose<AuthStateNotifier, AuthState>((ref) {
  final authenticateUseCase = ref.watch(authenticateUseCaseProvider);
  return AuthStateNotifier(ref: ref, authenticateUseCase: authenticateUseCase);
});
