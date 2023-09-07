import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/domain.dart';
import '../logic.dart';

final deleteAllRecordsUseCaseProvider = Provider.autoDispose<DeleteAllRecordsUseCase>((ref) {
  final repository = ref.watch(historyRepositoryProvider);
  return DeleteAllRecordsUseCase(repository: repository);
});

final deleteSomeRecordsUsECaseProvider = Provider.autoDispose<DeleteSomeRecordsUseCase>((ref) {
  final repository = ref.watch(historyRepositoryProvider);
  return DeleteSomeRecordsUseCase(repository: repository);
});

final deleteRecordsStateProvider =
    StateNotifierProvider.autoDispose<DeleteRecordsStateNotifier, DeleteRecordsState>((ref) {
  final deleteAllRecordsUseCase = ref.watch(deleteAllRecordsUseCaseProvider);
  final deleteSomeRecordsUseCase = ref.watch(deleteSomeRecordsUsECaseProvider);
  return DeleteRecordsStateNotifier(
    ref: ref,
    deleteAllRecordsUseCase: deleteAllRecordsUseCase,
    deleteSomeRecordsUseCase: deleteSomeRecordsUseCase,
  );
});
