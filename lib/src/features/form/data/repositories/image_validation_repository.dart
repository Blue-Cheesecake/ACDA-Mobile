import '../../domain/domain.dart';
import '../data.dart';

abstract interface class IImageValidationRepository {
  Future<ImageValidationResultEntity> validate(ImageValidationRequestBodyModel params);
}

class ImageValidationRepository implements IImageValidationRepository {
  ImageValidationRepository({required IImageValidationDataSource dataSource}) : _dataSource = dataSource;
  final IImageValidationDataSource _dataSource;

  @override
  Future<ImageValidationResultEntity> validate(ImageValidationRequestBodyModel params) {
    final response = _dataSource.validate(params);
    return response;
  }
}
