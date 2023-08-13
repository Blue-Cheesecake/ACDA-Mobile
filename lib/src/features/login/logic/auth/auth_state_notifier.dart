import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/core.dart';
import '../../../../utils/utils.dart';
import '../../data/data.dart';
import '../../domain/domain.dart';
import '../../utils/utils.dart';
import '../logic.dart';

class AuthStateNotifier extends ACDAStateNotifier<AuthState> {
  AuthStateNotifier({required this.ref, required this.authenticateUseCase}) : super(AuthState.initial());

  final AuthenticateUseCase authenticateUseCase;
  final Ref ref;

  Future<void> authenticate() async {
    safeState = AuthState.loading();
    final authState = ref.read(loginFormInputProvider);
    LoginFormValidationState validationState = LoginFormValidationState();

    final response = await authenticateUseCase.execute(
      AuthRequestBodyModel(email: authState.email?.trim() ?? 'NONE', password: authState.password ?? 'NONE'),
    );

    response.when(
      success: (APIResponse<IAuthTokenEntity> apiResponse) {
        apiResponse.when(
          success: (data) async {
            await ACDAUser.instance.writeToken(data.token);
            safeState = AuthState.data(data: data);
            ref.read(loginFormValidationStateProvider.notifier).state = validationState;
            ACDANavigation.instance.go(RoutePath.dashboard);
          },
          error: (errorMessageModel) {
            safeState = AuthState.clientError(message: errorMessageModel.message);
            validationState = validationState.copyWith(invalidAuthenticationErrorText: errorMessageModel.message);
            ref.read(loginFormValidationStateProvider.notifier).state = validationState;
          },
        );
      },
      error: (e) {
        safeState = AuthState.error(message: e.messages);
        validationState =
            validationState.copyWith(invalidAuthenticationErrorText: LoginFormMessages.internalServerError);
        ref.read(loginFormValidationStateProvider.notifier).state = validationState;
      },
    );
  }
}
