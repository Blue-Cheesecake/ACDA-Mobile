import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'logic.dart';

final formInputProvider = StateNotifierProvider.autoDispose<FormInputStateNotifier, FormInputState>((ref) {
  return FormInputStateNotifier();
});
