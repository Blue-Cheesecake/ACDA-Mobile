import '../../../../utils/utils.dart';
import '../models/models.dart';

abstract interface class IAuthRepository {
  Future<IAPIResponseEntity> authenticate(AuthRequestBodyModel request);
}
