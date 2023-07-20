import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils.dart';

part 'common_detection_result_model.freezed.dart';
part 'common_detection_result_model.g.dart';

@freezed
class CommonDetectionResultModel with _$CommonDetectionResultModel implements ICommonDetectionResultEntity {
  factory CommonDetectionResultModel({
    required final bool isPassed,
  }) = _CommonDetectionResultModel;

  factory CommonDetectionResultModel.fromJson(Map<String, dynamic> json) => _$CommonDetectionResultModelFromJson(json);
}
