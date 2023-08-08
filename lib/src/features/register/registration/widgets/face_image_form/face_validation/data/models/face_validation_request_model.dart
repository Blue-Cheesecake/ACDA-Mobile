import 'package:freezed_annotation/freezed_annotation.dart';

part 'face_validation_request_model.freezed.dart';
part 'face_validation_request_model.g.dart';

@freezed
class FaceValidationRequestModel with _$FaceValidationRequestModel {
  factory FaceValidationRequestModel({
    required String faceImage,
  }) = _FaceValidationRequestModel;

  factory FaceValidationRequestModel.fromJson(Map<String, dynamic> json) => _$FaceValidationRequestModelFromJson(json);
}
