import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/domain.dart';
import '../logic.dart';

final deleteSomeRecordsUseCaseProvider = Provider.autoDispose<DeleteSomeRecordsUseCase>((ref) {
  final repository = ref.watch(historyRepositoryProvider);
  return DeleteSomeRecordsUseCase(repository: repository);
});

final deleteRecordsStateProvider =
    StateNotifierProvider.autoDispose<DeleteRecordsStateNotifier, DeleteRecordsState>((ref) {
  final deleteSomeRecordsUseCase = ref.watch(deleteSomeRecordsUseCaseProvider);
  return DeleteRecordsStateNotifier(ref: ref, deleteSomeRecordsUseCase: deleteSomeRecordsUseCase);
});
