import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/utils.dart';
import '../../register_form/register_form.dart';
import '../email_existence.dart';
import 'logic.dart';

class EmailExistenceStateNotifier extends ACDAStateNotifier<EmailExistenceState> {
  EmailExistenceStateNotifier({required this.ref, required this.isEmailExistUseCase})
      : super(EmailExistenceState.initial());

  final Ref ref;
  final IsEmailExistUseCase isEmailExistUseCase;

  Future<void> checkEmailExistence() async {
    safeState = EmailExistenceState.loading();

    final String? email = ref.read(registerFormInputProvider.select((value) => value.email));
    final resposne = await isEmailExistUseCase.execute(email ?? '');

    resposne.when(
      success: (data) {
        safeState = EmailExistenceState.data(isExist: data.isExistent);
      },
      error: (error) {
        safeState = EmailExistenceState.error();
      },
    );
  }
}