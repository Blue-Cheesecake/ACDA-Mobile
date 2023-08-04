import '../../../../utils/utils.dart';
import '../../domain/domain.dart';
import '../models/models.dart';

abstract interface class IAuthRepository {
  Future<APIResponse<IAuthTokenEntity>> authenticate(AuthRequestBodyModel request);
}
