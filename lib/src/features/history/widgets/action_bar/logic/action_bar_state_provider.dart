import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'logic.dart';

final actionBarStateProvider = StateNotifierProvider.autoDispose<ActionBarStateNotifier, ActionBarState>((ref) {
  return ActionBarStateNotifier();
});
