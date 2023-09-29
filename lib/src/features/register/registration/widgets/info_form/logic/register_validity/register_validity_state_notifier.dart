import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../../utils/utils.dart';
import '../../../../../register_form/register_form.dart';
import '../../data/data.dart';
import '../../domain/domain.dart';
import '../../utils/utils.dart';
import 'register_validity.dart';

class RegisterValidityStateNotifier extends ACDAStateNotifier<RegisterValidityState> {
  RegisterValidityStateNotifier({required this.ref, required this.isValidToRegisterUseCase})
      : super(RegisterValidityState.initial());

  final Ref ref;
  final IsValidToRegisterUseCase isValidToRegisterUseCase;

  Future<void> validate() async {
    safeState = RegisterValidityState.loading();
    final String email = ref.read(registerFormInputProvider.select((value) => value.email));
    final String studentId = ref.read(registerFormInputProvider.select((value) => value.studentIdWithU));

    final response =
        await isValidToRegisterUseCase.execute(RegisterValidityRequestModel(email: email, studentId: studentId));

    response.when(
      success: (data) {
        if (data.isValid) {
          safeState = RegisterValidityState.success();
          return;
        }
        safeState = RegisterValidityState.error(message: InfoFormMessages.invalidEmailAndStudentID);
      },
      error: (error) {
        safeState = RegisterValidityState.error(message: ACDACommonMessages.unknownError);
      },
    );
  }
}
