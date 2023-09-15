import '../../../../../../../../utils/utils.dart';
import '../../face_validation.dart';

class FaceValidationRepository implements IFaceValidationRepository {
  FaceValidationRepository({required this.dataSource});

  final IFaceValidationDataSource dataSource;

  @override
  Future<APIResponse<IFaceValidationResultEntity>> validate({required String faceImageBase64}) {
    final response = dataSource.validate(faceImageBase64: faceImageBase64);
    return response;
  }
}
