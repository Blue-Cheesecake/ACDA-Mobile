import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'validation.dart';

final evaluationFormValidationStateProvider = StateNotifierProvider<EvaluationFormValidationStateNotifier, void>((ref) {
  return EvaluationFormValidationStateNotifier(ref: ref);
});
