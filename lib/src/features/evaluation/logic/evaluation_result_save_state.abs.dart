import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/data.dart';

part 'evaluation_result_save_state.abs.freezed.dart';

@freezed
class EvaluationResultSaveState with _$EvaluationResultSaveState {
  factory EvaluationResultSaveState({
    final SaveResultRequestModel? saveResultRequest,
  }) = _EvaluationResultSaveState;
}
