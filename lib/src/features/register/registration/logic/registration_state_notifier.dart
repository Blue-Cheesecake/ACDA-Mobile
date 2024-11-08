import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/utils.dart';
import '../../register_form/register_form.dart';
import '../registration.dart';

class RegistrationStateNotifer extends ACDAStateNotifier<RegistrationState> {
  RegistrationStateNotifer({required this.ref, required this.registerUseCase}) : super(RegistrationState.initial());

  final Ref ref;
  final RegisterUseCase registerUseCase;

  Future<void> register() async {
    safeState = RegistrationState.loading();

    final input = ref.read(registerFormInputProvider);
    final faceImageBase64 = base64Encode(await input.faceImage!.readAsBytes());
    final croppedFaceImageBase64 = input.croppedFaceImage!;

    final response = await registerUseCase.execute(RegistrationRequestModel(
      email: input.email,
      password: input.password!,
      studentId: input.studentIdWithU,
      facultyId: input.faculty!.id,
      faceImage: faceImageBase64,
      croppedFaceImage: croppedFaceImageBase64,
    ));

    response.when(
      success: (apiResponse) {
        apiResponse.when(
          success: (data) {
            safeState = RegistrationState.success();
          },
          error: (errorMessage) {
            safeState = RegistrationState.error();
          },
        );
      },
      error: (error) {
        safeState = RegistrationState.error();
      },
    );
  }
}
