import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../register_form.dart';
import '../../../../../utils/utils.dart';

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
      temp = temp.copyWith(passwordErrorText: RegisterFormMessages.emptyPassword);
    }
    if (!isStudentIdValid(input.studentId)) {
      isValid = false;
      temp = temp.copyWith(studentIdErrorText: RegisterFormMessages.invalidStudentId);
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

  bool isStudentIdValid(String? studentId) {
    if (studentId == null || studentId.isEmpty || studentId.length != 7 || !studentId.isNumeric) {
      return false;
    }

    final int requestYear = int.parse(studentId.substring(0, 2));
    final int requestFaculty = int.parse(studentId.substring(2, 4));

    // 88: ICT
    // 87: DST
    if (requestFaculty != 88 && requestFaculty != 87) {
      return false;
    }

    // validate year
    // only freshmen - senior
    // for example, if current year is 2566 freshmen start at 66. Only 63-66 is available.

    final int freshmenYear = int.parse((DateTime.now().buddistDate!.year).toString().substring(2)); // 2566
    final int seniorYear = freshmenYear - 3;

    return freshmenYear >= requestYear && requestYear >= seniorYear;
  }
}
