import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic.dart';

class LoginFormValidationStateNotifier extends StateNotifier<LoginFormValidationState> {
  LoginFormValidationStateNotifier({required this.ref}) : super(LoginFormValidationState());

  final Ref ref;

  bool isFormValid() {
    final String? email = ref.read(loginFormInputProvider.select((value) => value.email));
    final String? password = ref.read(loginFormInputProvider.select((value) => value.password));
    bool isValid = true;

    if (email == null || email.isEmpty) {
      isValid = false;
    }
    if (password == null || password.isEmpty) {
      isValid = false;
    }

    return isValid;
  }
}
