import '../../domain/domain.dart';
import '../data.dart';

class DashboardRepository implements IDashboardRepository {
  DashboardRepository({required this.dashboardDataSource});

  final IDashboardDataSource dashboardDataSource;

  @override
  Future<IBasicInfoEntity> getBasicInfo() {
    final response = dashboardDataSource.getBasicInfo();
    return response;
  }
}
