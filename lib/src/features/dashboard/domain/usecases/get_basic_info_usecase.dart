import '../../../../utils/utils.dart';
import '../../data/data.dart';
import '../domain.dart';

class GetBasicInfoUseCase extends BaseUseCase<void, IBasicInfoEntity> {
  GetBasicInfoUseCase({required this.dashboardRepository});

  final IDashboardRepository dashboardRepository;

  @override
  Future<IBasicInfoEntity> call(void params) {
    final response = dashboardRepository.getBasicInfo();
    return response;
  }
}
