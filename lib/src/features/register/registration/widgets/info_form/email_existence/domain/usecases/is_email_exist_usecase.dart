import '../../../../../../../../utils/utils.dart';
import '../domain.dart';

class IsEmailExistUseCase extends BaseUseCase<String, IEmailExistenceEntity> {
  IsEmailExistUseCase({required this.repository});

  final IEmailExistenceRepository repository;

  @override
  Future<IEmailExistenceEntity> call(String params) {
    final response = repository.isEmailExist(email: params);
    return response;
  }
}
