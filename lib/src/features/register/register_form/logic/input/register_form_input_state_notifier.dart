import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../utils/utils.dart';
import '../../../registration/utils/utils.dart';
import '../../../registration/widgets/face_image_form/face_validation/face_validation.dart';
import '../../../registration/widgets/widgets.dart';
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

  void updateEmailName(String? value) {
    state = state.copyWith(emailName: value);
    _checkInformationFormValidation();
  }

  void updateEmailDomainName(String? value) {
    state = state.copyWith(emailDomain: value);
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

  void updateFaculty(ICommonCategoryValueEntity value) {
    state = state.copyWith(faculty: value);
    _checkInformationFormValidation();
  }

  // Face Image Form

  void updateIsFaceImagePassed(bool? value) {
    state = state.copyWith(isFaceImageAlreadyPassed: value);
    _checkFaceImageFormValidation();
  }

  void updateFaceImage(XFile? value) async {
    state = state.copyWith(faceImage: value);
    await ref.read(faceValidationProvider.notifier).validate();
    _checkFaceImageFormValidation();
  }

  void updateIsAllowPDPA(bool value) {
    state = state.copyWith(isAllowPDPA: value);
    _checkFaceImageFormValidation();
  }

  void updateRegisterNextButtonScale(double value) {
    state = state.copyWith(completeButtonScale: value);
  }

  // Current Page
  void updateCurrentRegistrationPage(RegistrationPage value) {
    switch (value) {
      case RegistrationPage.info:
        ref.read(multiStepStateProvider.notifier).updateInfoStepStatus(StepStatus.selected);
        ref.read(multiStepStateProvider.notifier).updateFaceImageStatus(StepStatus.empty);
        ref.read(multiStepStateProvider.notifier).updateCompletionStatus(StepStatus.empty);
        break;
      case RegistrationPage.faceImage:
        ref.read(multiStepStateProvider.notifier).updateInfoStepStatus(StepStatus.completed);
        ref.read(multiStepStateProvider.notifier).updateFaceImageStatus(StepStatus.selected);
        ref.read(multiStepStateProvider.notifier).updateCompletionStatus(StepStatus.empty);
        break;
      case RegistrationPage.completion:
        ref.read(multiStepStateProvider.notifier).updateInfoStepStatus(StepStatus.completed);
        ref.read(multiStepStateProvider.notifier).updateFaceImageStatus(StepStatus.completed);
        ref.read(multiStepStateProvider.notifier).updateCompletionStatus(StepStatus.completed);
        break;
      default:
        break;
    }
    state = state.copyWith(currentPage: value);
  }
}
