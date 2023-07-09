import '../../../../utils/utils.dart';
import '../../data/data.dart';
import '../domain.dart';

class ImageValidationUseCase extends BaseUseCase<ImageValidationRequestBodyModel, ImageValidationResultEntity> {
  ImageValidationUseCase({required IImageValidationRepository repository}) : _repository = repository;
  final IImageValidationRepository _repository;

  @override
  Future<ImageValidationResultEntity> call(ImageValidationRequestBodyModel params) {
    final response = _repository.validate(params);
    return response;
  }
}
