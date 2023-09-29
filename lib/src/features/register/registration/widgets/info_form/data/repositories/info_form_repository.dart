import '../../domain/domain.dart';
import '../data.dart';

class InfoFormRepository implements IInfoFormRepository {
  InfoFormRepository({required this.dataSource});

  final IInfoFormDataSource dataSource;

  @override
  Future<IRegisterValidityResultEntity> validateEmailStudentId(RegisterValidityRequestModel request) {
    final response = dataSource.validateEmailStudentId(request);
    return response;
  }
}
