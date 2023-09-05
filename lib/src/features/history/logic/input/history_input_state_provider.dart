import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'input.dart';

final historyInputStateProvider = StateNotifierProvider<HistoryInputStateNotifier, HistoryInputState>((ref) {
  return HistoryInputStateNotifier();
});
