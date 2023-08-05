import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../registration/utils/utils.dart';
import '../logic.dart';

class RegisterFormInputStateNotifier extends StateNotifier<RegisterFormInputState> {
  RegisterFormInputStateNotifier({required this.ref}) : super(RegisterFormInputState());

  final Ref ref;

  void _checkInformationFormValidation() {
    final isValid = ref.read(registerFormValidationProvider.notifier).isInfomrationFormValid();
    state = state.copyWith(isInformationNextButtonEnabled: isValid);
  }

  void _checkFaceImageFormValidation() async {
    final isValid = await ref.read(registerFormValidationProvider.notifier).isFaceImageFormValid();
    state = state.copyWith(isFaceImageNextButtonEnabled: isValid);
  }

  // Information Form

  void updateEmail(String? value) {
    state = state.copyWith(email: value);
    _checkInformationFormValidation();
  }

  void updatePassword(String? value) {
    state = state.copyWith(password: value);
    _checkInformationFormValidation();
  }

  void updateConfirmedPassword(String? value) {
    state = state.copyWith(confirmedPassword: value);
    _checkInformationFormValidation();
  }

  void updateFacultyId(int? value) {
    state = state.copyWith(facultyId: value);
    _checkInformationFormValidation();
  }

  // Face Image Form

  void updateFaceImage(XFile? value) {
    state = state.copyWith(faceImage: value);
    _checkFaceImageFormValidation();
  }

  void updateIsAllowPDPA(bool value) {
    state = state.copyWith(isAllowPDPA: value);
    _checkFaceImageFormValidation();
  }

  // Current Page
  void updateCurrentRegistrationPAge(RegistrationPage value) {
    state = state.copyWith(currentPage: value);
  }
}
