import '../../domain/domain.dart';
import '../data.dart';

abstract interface class IInfoFormRepository {
  Future<IRegisterValidityResultEntity> validateEmailStudentId(RegisterValidityRequestModel request);
}
