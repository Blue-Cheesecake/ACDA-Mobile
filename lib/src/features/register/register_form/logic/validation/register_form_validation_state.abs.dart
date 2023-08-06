import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_form_validation_state.abs.freezed.dart';

@freezed
class RegisterFormValidationState with _$RegisterFormValidationState {
  factory RegisterFormValidationState({
    String? passwordErrorText,
    String? confirmedPasswordErrorText,
    String? invalidFaceImageErrorText,
    String? invalidFaceImageInstructionText,
  }) = _RegisterFormValidationState;
}
