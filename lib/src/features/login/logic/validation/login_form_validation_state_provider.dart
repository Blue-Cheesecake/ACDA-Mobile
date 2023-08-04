import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic.dart';

final loginFormValidationStateProvider =
    StateNotifierProvider<LoginFormValidationStateNotifier, LoginFormValidationState>((ref) {
  return LoginFormValidationStateNotifier(ref: ref);
});
