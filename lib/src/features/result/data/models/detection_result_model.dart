import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'detection_result_model.freezed.dart';
part 'detection_result_model.g.dart';

@freezed
class DetectionResultModel with _$DetectionResultModel implements IDetectionResultEntity {
  factory DetectionResultModel({
    required final bool isPassed,
  }) = _DetectionResultModel;

  factory DetectionResultModel.fromJson(Map<String, dynamic> json) => _$DetectionResultModelFromJson(json);
}
