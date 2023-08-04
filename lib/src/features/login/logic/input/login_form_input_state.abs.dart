import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_form_input_state.abs.freezed.dart';

@freezed
class LoginFormInputState with _$LoginFormInputState {
  factory LoginFormInputState({
    String? email,
    String? password,
    @Default(false) bool isButtonEnabled,
  }) = _LoginFormInputState;
}
