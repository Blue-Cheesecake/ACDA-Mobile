import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'logic.dart';

final acdaTimerCameraStateProvider =
    StateNotifierProvider.autoDispose<ACDATimerCameraStateNotifier, ACDATimerCameraState>((ref) {
  return ACDATimerCameraStateNotifier();
});
