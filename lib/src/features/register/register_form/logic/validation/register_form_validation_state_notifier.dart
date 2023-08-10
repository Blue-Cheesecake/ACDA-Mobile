import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../register_form.dart';

class RegisterFormValidationStateNotifier extends StateNotifier<RegisterFormValidationState> {
  RegisterFormValidationStateNotifier({required this.ref}) : super(RegisterFormValidationState());

  final Ref ref;

  bool isInfomrationFormValid() {
    bool isValid = true;
    final input = ref.read(registerFormInputProvider);

    var temp = RegisterFormValidationState();

    if (input.emailName == null || input.emailName!.isEmpty) {
      isValid = false;
    }
    if (input.emailDomain == null || input.emailDomain!.isEmpty) {
      isValid = false;
    }
    if (input.faculty == null) {
      isValid = false;
    }
    if (input.password == null || input.password!.isEmpty) {
      isValid = false;
    }
    if (input.password != null && input.password!.length < 7) {
      isValid = false;
      temp = temp.copyWith(passwordErrorText: RegisterFormMessages.invalidPasswordLength);
    }
    if (input.password != null && input.password!.contains(' ')) {
      isValid = false;
      temp = temp.copyWith(passwordErrorText: RegisterFormMessages.invalidPasswordChars);
    }
    if (input.confirmedPassword == null || input.confirmedPassword!.isEmpty) {
      isValid = false;
    }
    if (input.password != input.confirmedPassword) {
      temp = temp.copyWith(confirmedPasswordErrorText: RegisterFormMessages.confirmedPasswordError);
      isValid = false;
    }

    state = temp;
    return isValid;
  }

  Future<bool> isFaceImageFormValid() async {
    var isValid = true;

    final bool? isFaceImageAlreadyPassed =
        ref.read(registerFormInputProvider.select((value) => value.isFaceImageAlreadyPassed));

    if (isFaceImageAlreadyPassed == null || !isFaceImageAlreadyPassed) {
      isValid = false;
    }

    if (!ref.read(registerFormInputProvider.select((_) => _.isAllowPDPA))) {
      isValid = false;
    }

    return isValid;
  }
}
