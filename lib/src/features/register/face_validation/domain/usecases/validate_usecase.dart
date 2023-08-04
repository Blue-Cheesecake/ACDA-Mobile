import '../../../../../utils/utils.dart';
import '../domain.dart';

class ValidateUseCase extends BaseUseCase<String, APIResponse<IFaceValidationResultEntity>> {
  ValidateUseCase({required this.repository});

  final IFaceValidationRepository repository;

  @override
  Future<APIResponse<IFaceValidationResultEntity>> call(String params) {
    final response = repository.validate(faceImageBase64: params);
    return response;
  }
}
