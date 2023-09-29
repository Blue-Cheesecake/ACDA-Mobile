import '../../../../../../../utils/utils.dart';
import '../../data/data.dart';
import '../domain.dart';

class IsValidToRegisterUseCase extends BaseUseCase<RegisterValidityRequestModel, IRegisterValidityResultEntity> {
  IsValidToRegisterUseCase({required this.repository});

  final IInfoFormRepository repository;

  @override
  Future<IRegisterValidityResultEntity> call(RegisterValidityRequestModel params) {
    final response = repository.validateEmailStudentId(params);
    return response;
  }
}
