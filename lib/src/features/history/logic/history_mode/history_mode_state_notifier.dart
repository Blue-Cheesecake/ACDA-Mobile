import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'history_mode_state.abs.dart';

class HistoryModeStateNotifier extends StateNotifier<HistoryModeState> {
  HistoryModeStateNotifier() : super(HistoryModeState());

  void switchDeleteMode() {
    if (state.isDeletingMode) {
      state = state.copyWith(isDeletingMode: false);
    } else {
      state = state.copyWith(isDeletingMode: true);
    }
  }
}
