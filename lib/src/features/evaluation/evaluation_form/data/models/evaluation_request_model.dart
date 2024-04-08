import 'package:freezed_annotation/freezed_annotation.dart';

part 'evaluation_request_model.freezed.dart';
part 'evaluation_request_model.g.dart';

@freezed
class EvaluationRequestModel with _$EvaluationRequestModel {
  factory EvaluationRequestModel({
    required final String fullBodyImage,
    required final String upperBodyImage,
    // required final String studentIdCardImage,
  }) = _EvaluationRequestModel;

  factory EvaluationRequestModel.fromJson(Map<String, dynamic> json) => _$EvaluationRequestModelFromJson(json);
}
