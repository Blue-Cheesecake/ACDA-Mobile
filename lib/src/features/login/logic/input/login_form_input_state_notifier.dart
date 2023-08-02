import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'input.dart';

class LoginFormInputStateNotifier extends StateNotifier<LoginFormInputState> {
  LoginFormInputStateNotifier() : super(LoginFormInputState());

  void updateEmail(String? value) {
    state = state.copyWith(email: value);
  }

  void updatePassword(String? value) {
    state = state.copyWith(password: value);
  }
}
