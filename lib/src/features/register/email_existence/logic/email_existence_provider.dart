import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/core.dart';
import '../email_existence.dart';
import 'logic.dart';

final emailExistenceRepositoryProvider = Provider.autoDispose<IEmailExistenceRepository>((ref) {
  return EmailExistenceRepository(dataSource: EmailExistenceDataSource(dio: DioClient.client));
});

final isEmailExistUseCaseProvider = Provider.autoDispose<IsEmailExistUseCase>((ref) {
  final repository = ref.watch(emailExistenceRepositoryProvider);
  return IsEmailExistUseCase(repository: repository);
});

final emailExistenceProvider =
    StateNotifierProvider.autoDispose<EmailExistenceStateNotifier, EmailExistenceState>((ref) {
  final isEmailExistUseCase = ref.watch(isEmailExistUseCaseProvider);
  return EmailExistenceStateNotifier(ref: ref, isEmailExistUseCase: isEmailExistUseCase);
});
