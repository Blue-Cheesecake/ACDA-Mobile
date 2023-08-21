import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'status.dart';

final evaluationFormStatusStateProvider =
    StateNotifierProvider.autoDispose<EvaluationFormStatusStateNotifier, EvaluationFormStatusState>((ref) {
  return EvaluationFormStatusStateNotifier();
});
