import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic.dart';

final formValidationProvider = StateNotifierProvider<FormValidationStateNotifier, FormValidationState>((ref) {
  return FormValidationStateNotifier(ref: ref);
});
