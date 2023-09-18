import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'logic.dart';

final evaluationResultSaveProvider =
    StateNotifierProvider<EvaluationResultSaveNotifier, EvaluationResultSaveState>((ref) {
  return EvaluationResultSaveNotifier();
});
