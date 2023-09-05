import 'package:freezed_annotation/freezed_annotation.dart';

part 'evaluation_record_request_params.freezed.dart';
part 'evaluation_record_request_params.g.dart';

@freezed
class EvaluationRecordRequestParams with _$EvaluationRecordRequestParams {
  factory EvaluationRecordRequestParams({
    bool? result,
    DateTime? fromDate,
    DateTime? toDate,
  }) = _EvaluationRecordRequestParams;

  factory EvaluationRecordRequestParams.fromJson(Map<String, dynamic> json) =>
      _$EvaluationRecordRequestParamsFromJson(json);
}
