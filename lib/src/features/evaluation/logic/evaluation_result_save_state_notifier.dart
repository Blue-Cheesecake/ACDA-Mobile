import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/data.dart';
import 'logic.dart';

class EvaluationResultSaveNotifier extends StateNotifier<EvaluationResultSaveState> {
  EvaluationResultSaveNotifier() : super(EvaluationResultSaveState());

  void updateSaveRequest(SaveResultRequestModel? value) {
    state = state.copyWith(saveResultRequest: value);
  }
}
