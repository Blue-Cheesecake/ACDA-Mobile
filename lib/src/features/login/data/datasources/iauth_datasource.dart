import '../../../../utils/utils.dart';
import '../../domain/domain.dart';
import '../data.dart';

abstract interface class IAuthDataSource {
  Future<APIResponse<IAuthTokenEntity>> authenticate(AuthRequestBodyModel request);
}
