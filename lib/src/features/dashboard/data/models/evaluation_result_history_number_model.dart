import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'evaluation_result_history_number_model.freezed.dart';
part 'evaluation_result_history_number_model.g.dart';

@freezed
class EvaluationResultHistoryNumberModel
    with _$EvaluationResultHistoryNumberModel
    implements IEvaluationResultHistoryNumberEntity {
  factory EvaluationResultHistoryNumberModel({
    required final int numPassed,
    required final int numFailed,
    required final int total,
  }) = _EvaluationResultHistoryNumberModel;

  factory EvaluationResultHistoryNumberModel.fromJson(Map<String, dynamic> json) =>
      _$EvaluationResultHistoryNumberModelFromJson(json);
}
