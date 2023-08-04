import '../../../../utils/utils.dart';
import '../../data/models/models.dart';
import '../../data/repositories/repositories.dart';
import '../domain.dart';

class AuthenticateUseCase extends BaseUseCase<AuthRequestBodyModel, APIResponse<IAuthTokenEntity>> {
  AuthenticateUseCase({
    required this.repository,
  });

  final IAuthRepository repository;

  @override
  Future<APIResponse<IAuthTokenEntity>> call(AuthRequestBodyModel params) {
    return repository.authenticate(params);
  }
}
