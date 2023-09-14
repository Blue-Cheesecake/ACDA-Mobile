import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic.dart';

class HistoryModeStateNotifier extends StateNotifier<HistoryModeState> {
  HistoryModeStateNotifier({required Ref ref})
      : _ref = ref,
        super(HistoryModeState());

  final Ref _ref;

  void enterDeletingMode() {
    state = state.copyWith(isDeletingMode: true);
  }

  void leaveDeletingMode({bool shouldClearRequestId = true}) {
    if (shouldClearRequestId) {
      _ref.read(historyInputStateProvider.notifier).clearRequestDeleteIds();
    }
    state = state.copyWith(isDeletingMode: false);
  }
}
