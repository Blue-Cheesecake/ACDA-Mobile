import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'input.dart';

final loginFormInputProvider = StateNotifierProvider<LoginFormInputStateNotifier, LoginFormInputState>((ref) {
  return LoginFormInputStateNotifier();
});
