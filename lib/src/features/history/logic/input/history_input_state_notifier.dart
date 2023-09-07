import 'package:acda_mobile/src/features/history/data/data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'input.dart';

class HistoryInputStateNotifier extends StateNotifier<HistoryInputState> {
  HistoryInputStateNotifier()
      : super(HistoryInputState(
          getRequestParams: EvaluationRecordRequestParams(),
          deleteRequestParams: DeleteEvaluationRecordRequestModel(ids: []),
        ));

  void updateResultQuery(bool? value) {
    state = state.copyWith(getRequestParams: state.getRequestParams.copyWith(result: value));
  }

  void updateFromDateQuery(DateTime? value) {
    state = state.copyWith(getRequestParams: state.getRequestParams.copyWith(fromDate: value));
  }

  void updateToDateQuery(DateTime? value) {
    state = state.copyWith(getRequestParams: state.getRequestParams.copyWith(toDate: value));
  }

  void addDeleteId(String value) {
    final list = state.deleteRequestParams.ids;
    list.add(value);
    state = state.copyWith(deleteRequestParams: DeleteEvaluationRecordRequestModel(ids: list));
  }

  void removeDeleteId(String value) {
    final list = state.deleteRequestParams.ids;
    final isSuccess = list.remove(value);
    assert(isSuccess, true);

    state = state.copyWith(deleteRequestParams: DeleteEvaluationRecordRequestModel(ids: list));
  }
}
