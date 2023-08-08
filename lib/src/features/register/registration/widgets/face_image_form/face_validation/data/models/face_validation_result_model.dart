import 'package:freezed_annotation/freezed_annotation.dart';

import '../../face_validation.dart';

part 'face_validation_result_model.freezed.dart';
part 'face_validation_result_model.g.dart';

@freezed
class FaceValidationResultModel with _$FaceValidationResultModel implements IFaceValidationResultEntity {
  factory FaceValidationResultModel({required bool isPassed}) = _FaceValidationResultModel;

  factory FaceValidationResultModel.fromJson(Map<String, dynamic> json) => _$FaceValidationResultModelFromJson(json);
}
