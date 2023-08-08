import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'logic.dart';

final multiStepStateProvider = StateNotifierProvider.autoDispose<MultiStepStateNotifier, MultiStepState>((ref) {
  return MultiStepStateNotifier();
});
