import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/utils.dart';
import 'logic.dart';

class MultiStepStateNotifier extends StateNotifier<MultiStepState> {
  MultiStepStateNotifier() : super(MultiStepState());

  void updateInfoStepStatus(StepStatus value) {
    state = state.copyWith(info: value);
  }

  void updateFaceImageStatus(StepStatus value) {
    state = state.copyWith(faceImage: value);
  }

  void updateCompletionStatus(StepStatus value) {
    state = state.copyWith(completion: value);
  }
}
