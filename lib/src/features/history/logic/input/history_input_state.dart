import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/data.dart';
import '../../utils/utils.dart';

part 'history_input_state.freezed.dart';

@freezed
class HistoryInputState with _$HistoryInputState {
  const HistoryInputState._();

  factory HistoryInputState({
    required EvaluationRecordRequestParams getRequestParams,
    required EvaluationRecordRequestParamsTemp getRequestParamsTemp,
    required DeleteEvaluationRecordRequestModel deleteRequestParams,
    @Default(false) final bool isUsedClearDate,
  }) = _HistoryInputState;

  bool get isSelectedAllResult => getRequestParams.result == null;
  bool get isSelectedPassedResult => getRequestParams.result == true;
  bool get isSelectedFailedResult => getRequestParams.result == false;
  bool get isSelectedNewestOrder {
    if (getRequestParamsTemp.sort == null) {
      return getRequestParams.sort == SortOption.newest.value;
    }
    return getRequestParamsTemp.sort == SortOption.newest.value;
  }

  bool get isSelectedOldestOrder {
    if (getRequestParamsTemp.sort == null) {
      return getRequestParams.sort == SortOption.oldest.value;
    }
    return getRequestParamsTemp.sort == SortOption.oldest.value;
  }

  DateTime? get fromDate {
    if (getRequestParamsTemp.fromDate == null) {
      return getRequestParams.fromDate;
    }
    return getRequestParamsTemp.fromDate;
  }

  DateTime? get toDate {
    if (getRequestParamsTemp.toDate == null) {
      return getRequestParams.toDate;
    }
    return getRequestParamsTemp.toDate;
  }
}
