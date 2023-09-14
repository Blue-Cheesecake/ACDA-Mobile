import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_evaluation_result_state.freezed.dart';

@freezed
class SaveEvaluationResultState with _$SaveEvaluationResultState {
  factory SaveEvaluationResultState.initial() = _SaveEvaluationResultStateInitial;
  factory SaveEvaluationResultState.loading() = _SaveEvaluationResultStateLoading;
  factory SaveEvaluationResultState.success() = _SaveEvaluationResultStateSuccess;
  factory SaveEvaluationResultState.error() = _SaveEvaluationResultStateError;
}
