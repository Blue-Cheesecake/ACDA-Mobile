import '../../../../../utils/utils.dart';
import '../../registration.dart';

abstract interface class IRegistrationRepository {
  Future<APIResponse<APISimpleMessageModel>> register({required RegistrationRequestModel body});
}
