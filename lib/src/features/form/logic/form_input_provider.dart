import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'logic.dart';

final formInputProvider = StateNotifierProvider<FormInputStateNotifier, FormInputState>((ref) {
  return FormInputStateNotifier();
});
