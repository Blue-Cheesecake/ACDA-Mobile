import 'package:acda_mobile/src/utils/api_response.dart';

import 'package:acda_mobile/src/utils/models/api_simple_message_model.dart';

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
