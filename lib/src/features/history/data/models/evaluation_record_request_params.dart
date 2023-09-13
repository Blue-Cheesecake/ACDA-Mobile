import 'package:freezed_annotation/freezed_annotation.dart';

part 'evaluation_record_request_params.freezed.dart';
part 'evaluation_record_request_params.g.dart';

@freezed
class EvaluationRecordRequestParams with _$EvaluationRecordRequestParams {
  factory EvaluationRecordRequestParams({
    @Default('descending') final String sort,
    final bool? result,
    final DateTime? fromDate,
    final DateTime? toDate,
  }) = _EvaluationRecordRequestParams;

  factory EvaluationRecordRequestParams.fromJson(Map<String, dynamic> json) =>
      _$EvaluationRecordRequestParamsFromJson(json);
}
