import '../../../../utils/utils.dart';
import '../data.dart';

class AuthRepository implements IAuthRepository {
  AuthRepository({required this.dataSource});

  final IAuthDataSource dataSource;

  @override
  Future<APIResponse> authenticate(AuthRequestBodyModel request) {
    return dataSource.authenticate(request);
  }
}
