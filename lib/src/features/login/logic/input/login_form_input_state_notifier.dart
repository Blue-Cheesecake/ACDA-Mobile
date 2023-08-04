import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic.dart';

class LoginFormInputStateNotifier extends StateNotifier<LoginFormInputState> {
  LoginFormInputStateNotifier({required this.ref}) : super(LoginFormInputState());

  final Ref ref;

  void _checkValidation() {
    final isFormValid = ref.read(loginFormValidationStateProvider.notifier).isFormValid();
    state = state.copyWith(isButtonEnabled: isFormValid);
  }

  void updateEmail(String? value) {
    state = state.copyWith(email: value);
    _checkValidation();
  }

  void updatePassword(String? value) {
    state = state.copyWith(password: value);
    _checkValidation();
  }
}
