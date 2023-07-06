import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'image_validation_result_model.freezed.dart';
part 'image_validation_result_model.g.dart';

@freezed
class ImageValidationResultModel with _$ImageValidationResultModel implements ImageValidationResultEntity {
  factory ImageValidationResultModel({
    required bool isPassed,
  }) = _ImageValidationResultModel;

  factory ImageValidationResultModel.fromJson(Map<String, dynamic> json) => _$ImageValidationResultModelFromJson(json);
}
