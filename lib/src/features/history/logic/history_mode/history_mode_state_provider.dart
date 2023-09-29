import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic.dart';

final historyModeStateProvider = StateNotifierProvider.autoDispose<HistoryModeStateNotifier, HistoryModeState>((ref) {
  return HistoryModeStateNotifier(ref: ref);
});
