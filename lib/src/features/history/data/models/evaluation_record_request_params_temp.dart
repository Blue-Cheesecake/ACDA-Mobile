import 'package:freezed_annotation/freezed_annotation.dart';

part 'evaluation_record_request_params_temp.freezed.dart';

@freezed
class EvaluationRecordRequestParamsTemp with _$EvaluationRecordRequestParamsTemp {
  factory EvaluationRecordRequestParamsTemp({
    final String? sort,
    final DateTime? fromDate,
    final DateTime? toDate,
  }) = _EvaluationRecordRequestParamsTemp;
}
