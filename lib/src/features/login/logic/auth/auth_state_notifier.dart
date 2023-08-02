import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/core.dart';
import '../../../../utils/utils.dart';
import '../../data/data.dart';
import '../../domain/domain.dart';
import '../logic.dart';

class AuthStateNotifier extends ACDAStateNotifier<AuthState> {
  AuthStateNotifier({required this.ref, required this.authenticateUseCase}) : super(AuthState.initial());

  final AuthenticateUseCase authenticateUseCase;
  final Ref ref;

  Future<void> authenticate() async {
    final authState = ref.read(loginFormInputProvider);

    final response = await authenticateUseCase.execute(
      AuthRequestBodyModel(email: authState.email ?? '', password: authState.password ?? ''),
    );

    response.when(
      success: (APIResponse<IAuthTokenEntity> apiResponse) {
        apiResponse.when(
          success: (data) async {
            await ACDAUser.instance.writeToken(data.token);
            safeState = AuthState.data(data: data);
          },
          error: (errorMessageModel) {
            safeState = AuthState.clientError(message: errorMessageModel.message);
          },
        );
      },
      error: (e) {
        safeState = AuthState.error();
      },
    );
  }
}
