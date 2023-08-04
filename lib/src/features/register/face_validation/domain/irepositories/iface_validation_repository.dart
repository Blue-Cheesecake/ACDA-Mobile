import '../../../../../utils/utils.dart';
import '../domain.dart';

abstract interface class IFaceValidationRepository {
  Future<APIResponse<IFaceValidationResultEntity>> validate({required String faceImageBase64});
}
