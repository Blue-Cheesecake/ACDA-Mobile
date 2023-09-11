import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/data.dart';

part 'history_input_state.freezed.dart';

@freezed
class HistoryInputState with _$HistoryInputState {
  const HistoryInputState._();

  factory HistoryInputState({
    required EvaluationRecordRequestParams getRequestParams,
    required DeleteEvaluationRecordRequestModel deleteRequestParams,
  }) = _HistoryInputState;

  bool get isSelectedAllResult => getRequestParams.result == null;
  bool get isSelectedPassedResult => getRequestParams.result == true;
  bool get isSelectedFailedResult => getRequestParams.result == false;
}
