import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'input.dart';

final evaluationFormInputStateProvider =
    StateNotifierProvider.autoDispose<EvaluationFormInputStateNotifier, EvaluationFormInputState>((ref) {
  return EvaluationFormInputStateNotifier(ref: ref);
});
