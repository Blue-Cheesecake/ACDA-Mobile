import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import 'input.dart';

class EvaluationFormInputStateNotifier extends StateNotifier<EvaluationFormInputState> {
  EvaluationFormInputStateNotifier() : super(EvaluationFormInputState());

  void updateFullBodyImageFile(XFile? value) {
    state = state.copyWith(fullBodyImageFile: value);
  }

  void updateUpperBodyImageFile(XFile? value) {
    state = state.copyWith(upperBodyImageFile: value);
  }

  void updateStudentIdCardImageFile(XFile? value) {
    state = state.copyWith(studentIdCardImageFile: value);
  }
}
