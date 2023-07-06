import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/core.dart';

class ACDAStateNotifier<T> extends StateNotifier<T> {
  ACDAStateNotifier(super.state);

  T? get safeState {
    if (!mounted) {
      return null;
    }
    return state;
  }

  set safeState(T? value) {
    if (!mounted || value == null) {
      ACDALog.print(message: 'Cannot set safeState of $T. Mounted: $mounted, Value: $value');
      return;
    }
    state = value;
  }
}
