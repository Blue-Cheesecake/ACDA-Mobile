import '../domain.dart';

abstract interface class IEmailExistenceRepository {
  Future<IEmailExistenceEntity> isEmailExist({required String email});
}
