import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_validation_request_body_model.freezed.dart';
part 'image_validation_request_body_model.g.dart';

@freezed
class ImageValidationRequestBodyModel with _$ImageValidationRequestBodyModel {
  factory ImageValidationRequestBodyModel({
    // Base64 String
    required final String image,
    required final String category,
  }) = _ImageValidationRequestBodyModel;

  factory ImageValidationRequestBodyModel.fromJson(Map<String, dynamic> json) =>
      _$ImageValidationRequestBodyModelFromJson(json);
}
