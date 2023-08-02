import '../../../../utils/utils.dart';
import '../../data/models/models.dart';
import '../../data/repositories/repositories.dart';

class AuthenticateUseCase extends BaseUseCase<AuthRequestBodyModel, APIResponse> {
  AuthenticateUseCase({
    required this.repository,
  });

  final IAuthRepository repository;

  @override
  Future<APIResponse> call(AuthRequestBodyModel params) {
    return repository.authenticate(params);
  }
}
