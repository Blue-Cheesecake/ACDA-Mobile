import '../../../../utils/utils.dart';
import '../../domain/domain.dart';
import '../data.dart';

class AuthRepository implements IAuthRepository {
  AuthRepository({required this.dataSource});

  final IAuthDataSource dataSource;

  @override
  Future<APIResponse<IAuthTokenEntity>> authenticate(AuthRequestBodyModel request) {
    return dataSource.authenticate(request);
  }
}
