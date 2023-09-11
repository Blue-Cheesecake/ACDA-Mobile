import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'logic.dart';

class ActionBarStateNotifier extends StateNotifier<ActionBarState> {
  ActionBarStateNotifier() : super(ActionBarState());

  void switchAction() {
    if (state.isOpening) {
      state = state.copyWith(isOpening: false, actionBarWidth: 31);
    } else {
      state = state.copyWith(isOpening: true, actionBarWidth: 160);
    }
  }
}
