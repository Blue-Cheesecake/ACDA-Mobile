import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../logic.dart';

class EvaluationFormInputStateNotifier extends StateNotifier<EvaluationFormInputState> {
  EvaluationFormInputStateNotifier({required this.ref}) : super(EvaluationFormInputState());

  final Ref ref;

  void _validateForm() {
    final isFormValid = ref.read(evaluationFormValidationStateProvider.notifier).isFormValid();
    state = state.copyWith(isSubmitButtonEnabled: isFormValid);
  }

  void updateFullBodyImageFile(XFile? value) {
    state = state.copyWith(fullBodyImageFile: value);
    _validateForm();
  }

  void updateUpperBodyImageFile(XFile? value) {
    state = state.copyWith(upperBodyImageFile: value);
    _validateForm();
  }

  void updateStudentIdCardImageFile(XFile? value) {
    state = state.copyWith(studentIdCardImageFile: value);
    _validateForm();
  }
}
