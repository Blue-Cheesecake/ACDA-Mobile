import 'package:acda_mobile/src/features/history/data/data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'input.dart';

class HistoryInputStateNotifier extends StateNotifier<HistoryInputState> {
  HistoryInputStateNotifier() : super(HistoryInputState(requestParams: EvaluationRecordRequestParams()));

  void updateResultQuery(bool? value) {
    state = state.copyWith(requestParams: state.requestParams.copyWith(result: value));
  }

  void updateFromDateQuery(DateTime? value) {
    state = state.copyWith(requestParams: state.requestParams.copyWith(fromDate: value));
  }

  void updateToDateQuery(DateTime? value) {
    state = state.copyWith(requestParams: state.requestParams.copyWith(toDate: value));
  }
}
