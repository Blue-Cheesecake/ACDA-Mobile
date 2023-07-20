import '../../../../../../utils/utils.dart';
import '../data.dart';

abstract class IDetectionResultRepository {
  Future<ICommonDetectionResultEntity> getDetectionResult({required DetectionRequestBodyModel body});
}

class DetectionResultRepository implements IDetectionResultRepository {
  DetectionResultRepository({required this.dataSource});

  final IDetectionResultDataSource dataSource;

  @override
  Future<ICommonDetectionResultEntity> getDetectionResult({required DetectionRequestBodyModel body}) {
    final response = dataSource.getDetectionResult(body: body);
    return response;
  }
}
