import '../../../../utils/utils.dart';
import '../data.dart';

abstract interface class IAuthDataSource {
  Future<APIResponse> authenticate(AuthRequestBodyModel request);
}
