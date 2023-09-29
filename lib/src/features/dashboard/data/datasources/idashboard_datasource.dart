import '../../domain/domain.dart';

abstract interface class IDashboardDataSource {
  Future<IBasicInfoEntity> getBasicInfo();
}
