import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_form_validation_state.abs.freezed.dart';

@freezed
class LoginFormValidationState with _$LoginFormValidationState {
  factory LoginFormValidationState({
    String? invalidAuthenticationErrorText,
  }) = _LoginFormValidationState;
}
