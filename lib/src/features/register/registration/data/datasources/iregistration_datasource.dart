import '../../../../../utils/utils.dart';
import '../data.dart';

abstract interface class IRegistrationDataSource {
  Future<APIResponse<APISimpleMessageModel>> register({required RegistrationRequestModel body});
}
