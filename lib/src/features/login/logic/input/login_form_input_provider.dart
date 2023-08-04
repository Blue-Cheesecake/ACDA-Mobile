import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'input.dart';

final loginFormInputProvider =
    StateNotifierProvider.autoDispose<LoginFormInputStateNotifier, LoginFormInputState>((ref) {
  return LoginFormInputStateNotifier(ref: ref);
});
