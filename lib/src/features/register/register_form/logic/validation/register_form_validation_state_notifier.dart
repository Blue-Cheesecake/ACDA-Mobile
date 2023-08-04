import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../face_validation/face_validation.dart';
import '../../register_form.dart';

class RegisterFormValidationStateNotifier extends StateNotifier<RegisterFormValidationState> {
  RegisterFormValidationStateNotifier({required this.ref}) : super(RegisterFormValidationState());

  final Ref ref;

  bool isInfomrationFormValid() {
    bool isValid = true;
    final input = ref.read(registerFormInputProvider);
    state = RegisterFormValidationState(
      invalidFaceImageErrorText: state.invalidFaceImageErrorText,
      invalidFaceImageInstructionText: state.invalidFaceImageInstructionText,
    );

    if (input.email == null || input.email!.isEmpty) {
      isValid = false;
    }
    if (input.facultyId == null) {
      isValid = false;
    }
    if (input.password == null || input.password!.isEmpty) {
      isValid = false;
    }
    if (input.confirmedPassword == null || input.confirmedPassword!.isEmpty) {
      isValid = false;
    }
    if (input.password != input.confirmedPassword) {
      state = state.copyWith(confirmedPasswordErrorText: RegisterFormMessages.confirmedPasswordError);
      isValid = false;
    }

    return isValid;
  }

  Future<bool> isFaceImageFormValid() async {
    bool isValid = true;
    final input = ref.read(registerFormInputProvider);
    state = RegisterFormValidationState(confirmedPasswordErrorText: state.confirmedPasswordErrorText);

    if (input.faceImage == null) {
      isValid = false;
    } else {
      await ref.read(faceValidationProvider.notifier).validate();

      final response = ref.read(faceValidationProvider);
      response.whenOrNull(
        validated: (isPassed) {
          if (!isPassed) {
            isValid = false;
            state = state.copyWith(invalidFaceImageErrorText: RegisterFormMessages.invalidFaceImageError);
            state = state.copyWith(invalidFaceImageInstructionText: RegisterFormMessages.invalidFaceImageInstruction);
          }
        },
      );
    }

    if (!input.isAllowPDPA) {
      isValid = false;
    }

    return isValid;
  }
}
