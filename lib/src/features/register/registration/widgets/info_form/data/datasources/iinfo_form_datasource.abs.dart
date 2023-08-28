import '../../domain/domain.dart';
import '../models/models.dart';

abstract interface class IInfoFormDataSource {
  Future<IRegisterValidityResultEntity> validateEmailStudentId(RegisterValidityRequestModel request);
}
