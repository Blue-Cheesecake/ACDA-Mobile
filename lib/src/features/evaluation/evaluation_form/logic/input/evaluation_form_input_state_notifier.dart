import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/utils.dart';
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
    ref.read(evaluationFormStatusStateProvider.notifier).updateIsFullBodyImageFilled(value != null);
    _validateForm();
  }

  void updateUpperBodyImageFile(XFile? value) {
    state = state.copyWith(upperBodyImageFile: value);
    ref.read(evaluationFormStatusStateProvider.notifier).updateIsUpperBodyImageFilled(value != null);
    _validateForm();
  }

  // void updateStudentIdCardImageFile(XFile? value) {
  //   state = state.copyWith(studentIdCardImageFile: value);
  //   ref.read(evaluationFormStatusStateProvider.notifier).updateIsStudentIdCardImageFilled(value != null);
  //   _validateForm();
  // }

  void updateCurrentField(EvaluationFormField value) {
    state = state.copyWith(currentField: value);
  }
}
