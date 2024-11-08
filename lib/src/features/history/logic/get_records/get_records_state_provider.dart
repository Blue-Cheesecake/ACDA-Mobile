import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/domain.dart';
import '../logic.dart';

final getRecordsUseCaseProvider = Provider.autoDispose<GetRecordsUseCase>((ref) {
  final repository = ref.watch(historyRepositoryProvider);
  return GetRecordsUseCase(repository: repository);
});

final getRecordsStateProvider = StateNotifierProvider.autoDispose<GetRecordsStateNotifier, GetRecordsState>((ref) {
  final getRecordsUseCase = ref.watch(getRecordsUseCaseProvider);
  return GetRecordsStateNotifier(ref: ref, getRecordsUseCase: getRecordsUseCase);
});
