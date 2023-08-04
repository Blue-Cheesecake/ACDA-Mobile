import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'input.dart';

final registerFormInputProvider =
    StateNotifierProvider.autoDispose<RegisterFormInputStateNotifier, RegisterFormInputState>((ref) {
  return RegisterFormInputStateNotifier(ref: ref);
});
