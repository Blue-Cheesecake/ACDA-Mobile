import '../../../../utils/utils.dart';
import '../../data/data.dart';
import '../domain.dart';

class GetDetectionResultUseCase extends BaseUseCase<DetectionRequestBodyModel, IDetectionResultEntity> {
  GetDetectionResultUseCase({required this.repository});

  final IDetectionResultRepository repository;

  @override
  Future<IDetectionResultEntity> call(DetectionRequestBodyModel params) {
    final response = repository.getDetectionResult(body: params);
    return response;
  }
}
