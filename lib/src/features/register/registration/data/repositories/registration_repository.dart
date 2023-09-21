import '../../../../../utils/utils.dart';
import '../../registration.dart';

class RegistrationRepository implements IRegistrationRepository {
  RegistrationRepository({required this.dataSource});

  final IRegistrationDataSource dataSource;

  @override
  Future<APIResponse<APISimpleMessageModel>> register({required RegistrationRequestModel body}) {
    final response = dataSource.register(body: body);
    return response;
  }
}
