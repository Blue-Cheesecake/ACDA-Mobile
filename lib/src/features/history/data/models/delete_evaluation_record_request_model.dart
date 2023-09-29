import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_evaluation_record_request_model.freezed.dart';
part 'delete_evaluation_record_request_model.g.dart';

@freezed
class DeleteEvaluationRecordRequestModel with _$DeleteEvaluationRecordRequestModel {
  factory DeleteEvaluationRecordRequestModel({
    required final List<String> ids,
  }) = _DeleteEvaluationRecordRequestModel;

  factory DeleteEvaluationRecordRequestModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteEvaluationRecordRequestModelFromJson(json);
}
