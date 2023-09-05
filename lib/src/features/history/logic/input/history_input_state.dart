import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/data.dart';

part 'history_input_state.freezed.dart';

@freezed
class HistoryInputState with _$HistoryInputState {
  factory HistoryInputState({
    required EvaluationRecordRequestParams requestParams,
  }) = _HistoryInputState;
}
