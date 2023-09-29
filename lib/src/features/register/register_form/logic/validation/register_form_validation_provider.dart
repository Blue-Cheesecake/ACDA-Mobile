import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic.dart';

final registerFormValidationProvider =
    StateNotifierProvider.autoDispose<RegisterFormValidationStateNotifier, RegisterFormValidationState>((ref) {
  return RegisterFormValidationStateNotifier(ref: ref);
});
