import '../../../../../../../../utils/utils.dart';
import '../../face_validation.dart';

abstract interface class IFaceValidationDataSource {
  Future<APIResponse<IFaceValidationResultEntity>> validate({required String faceImageBase64});
}
