import '../../../../../../utils/utils.dart';
import '../../data/data.dart';

class GetDetectionResultUseCase extends BaseUseCase<DetectionRequestBodyModel, ICommonDetectionResultEntity> {
  GetDetectionResultUseCase({required this.repository});

  final IDetectionResultRepository repository;

  @override
  Future<ICommonDetectionResultEntity> call(DetectionRequestBodyModel params) {
    final response = repository.getDetectionResult(body: params);
    return response;
  }
}
