import '../../domain/domain.dart';

abstract interface class IEmailExistenceDataSource {
  Future<IEmailExistenceEntity> isEmailExist({required String email});
}
