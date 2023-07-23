import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/utils.dart';
import '../logic.dart';

class FormValidationStateNotifier extends StateNotifier<FormValidationState> {
  FormValidationStateNotifier({required this.ref}) : super(FormValidationState());
  final Ref ref;

  bool isValid() {
    final inputState = ref.read(formInputProvider);
    var isValid = true;
    var temp = FormValidationState();

    if (inputState.label == null || inputState.label!.isEmpty) {
      isValid = false;
      temp = temp.copyWith(labelErrorText: FormMessages.labelWarnText);
    }
    if (inputState.bodyImageBytes == null || inputState.bodyImageBytes!.isEmpty) {
      isValid = false;
    }
    if (inputState.bottomImageBytes == null || inputState.bottomImageBytes!.isEmpty) {
      isValid = false;
    }
    if (inputState.shoesImageBytes == null || inputState.shoesImageBytes!.isEmpty) {
      isValid = false;
    }

    state = temp;
    return isValid;
  }
}
