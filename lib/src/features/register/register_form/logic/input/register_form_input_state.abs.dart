import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../registration/utils/utils.dart';

part 'register_form_input_state.abs.freezed.dart';

@freezed
class RegisterFormInputState with _$RegisterFormInputState {
  factory RegisterFormInputState({
    String? email,
    String? password,
    String? confirmedPassword,
    int? facultyId,
    XFile? faceImage,
    @Default(false) bool isAllowPDPA,
    @Default(false) bool isInformationNextButtonEnabled,
    @Default(false) bool isFaceImageNextButtonEnabled,
    @Default(RegistrationPage.info) RegistrationPage currentPage,
  }) = _RegisterFormInputState;
}
