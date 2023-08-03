import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import 'input.dart';

class RegisterFormInputStateNotifier extends StateNotifier<RegisterFormInputState> {
  RegisterFormInputStateNotifier() : super(RegisterFormInputState());

  void updateEmail(String? value) {
    state = state.copyWith(email: value);
  }

  void updatePassword(String? value) {
    state = state.copyWith(password: value);
  }

  void updateConfirmedPassword(String? value) {
    state = state.copyWith(confirmedPassword: value);
  }

  void updateFacultyId(int? value) {
    state = state.copyWith(facultyId: value);
  }

  void updateFaceImage(XFile? value) {
    state = state.copyWith(faceImage: value);
  }
}
