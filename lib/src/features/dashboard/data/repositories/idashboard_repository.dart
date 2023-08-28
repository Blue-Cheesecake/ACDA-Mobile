import '../../domain/domain.dart';

abstract interface class IDashboardRepository {
  Future<IBasicInfoEntity> getBasicInfo();
}
