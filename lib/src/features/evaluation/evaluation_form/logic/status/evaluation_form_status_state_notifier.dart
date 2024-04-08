import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'status.dart';

class EvaluationFormStatusStateNotifier extends StateNotifier<EvaluationFormStatusState> {
  EvaluationFormStatusStateNotifier() : super(EvaluationFormStatusState());

  void updateIsFullBodyImageFilled(bool value) {
    state = state.copyWith(isFullBodyImageFilled: value);
  }

  void updateIsUpperBodyImageFilled(bool value) {
    state = state.copyWith(isUpperBodyImageFilled: value);
  }

  // void updateIsStudentIdCardImageFilled(bool value) {
  //   state = state.copyWith(isStudentIdCardImageFilled: value);
  // }
}
