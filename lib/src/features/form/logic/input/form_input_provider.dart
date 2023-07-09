import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'input.dart';

final formInputProvider = StateNotifierProvider.autoDispose<FormInputStateNotifier, FormInputState>((ref) {
  return FormInputStateNotifier(ref: ref);
});
