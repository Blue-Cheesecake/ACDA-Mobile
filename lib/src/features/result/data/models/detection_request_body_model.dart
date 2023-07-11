import 'package:freezed_annotation/freezed_annotation.dart';

part 'detection_request_body_model.freezed.dart';
part 'detection_request_body_model.g.dart';

@freezed
class DetectionRequestBodyModel with _$DetectionRequestBodyModel {
  factory DetectionRequestBodyModel({
    required final String bodyImage,
    required final String bottomImage,
    required final String shosesImage,
  }) = _DetectionRequestBodyModel;

  factory DetectionRequestBodyModel.fromJson(Map<String, dynamic> json) => _$DetectionRequestBodyModelFromJson(json);
}
