import '../../domain/domain.dart';
import '../data.dart';

class EmailExistenceRepository implements IEmailExistenceRepository {
  EmailExistenceRepository({required this.dataSource});

  final IEmailExistenceDataSource dataSource;

  @override
  Future<IEmailExistenceEntity> isEmailExist({required String email}) {
    return dataSource.isEmailExist(email: email);
  }
}
