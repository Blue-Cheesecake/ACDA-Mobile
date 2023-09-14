import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'logic.dart';

final acdaTimerCameraStateProvider = StateNotifierProvider.autoDispose
    .family<ACDATimerCameraStateNotifier, ACDATimerCameraState, String>((ref, String key) {
  return ACDATimerCameraStateNotifier();
});
