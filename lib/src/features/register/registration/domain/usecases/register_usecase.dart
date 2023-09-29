import '../../../../../utils/utils.dart';
import '../../registration.dart';

class RegisterUseCase extends BaseUseCase<RegistrationRequestModel, APIResponse<APISimpleMessageModel>> {
  RegisterUseCase({required this.repository});

  final IRegistrationRepository repository;

  @override
  Future<APIResponse<APISimpleMessageModel>> call(RegistrationRequestModel params) {
    final resposne = repository.register(body: params);
    return resposne;
  }
}
