import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/data.dart';
import '../../domain/domain.dart';
import '../../utils/utils.dart';
import 'input.dart';

class HistoryInputStateNotifier extends StateNotifier<HistoryInputState> {
  HistoryInputStateNotifier()
      : super(HistoryInputState(
          getRequestParams: EvaluationRecordRequestParams(),
          getRequestParamsTemp: EvaluationRecordRequestParamsTemp(),
          deleteRequestParams: DeleteEvaluationRecordRequestModel(ids: []),
        ));

  void updateResultQuery(bool? value) {
    state = state.copyWith(getRequestParams: state.getRequestParams.copyWith(result: value));
  }

  void useClearDate() {
    state = state.copyWith(
      isUsedClearDate: true,
      getRequestParamsTemp: state.getRequestParamsTemp.copyWith(fromDate: null, toDate: null),
    );
  }

  void updateFromDateTemp(DateTime? value) {
    state = state.copyWith(
      isUsedClearDate: false,
      getRequestParamsTemp: state.getRequestParamsTemp.copyWith(fromDate: value),
    );
  }

  void updateToDateTemp(DateTime? value) {
    state = state.copyWith(
      isUsedClearDate: false,
      getRequestParamsTemp: state.getRequestParamsTemp.copyWith(toDate: value),
    );
  }

  void addDeleteIdsFromEntityList(List<IEvaluationRecordEntity> records) {
    state = state.copyWith(deleteRequestParams: DeleteEvaluationRecordRequestModel(ids: [...records.map((e) => e.id)]));
  }

  void addDeleteId(String value) {
    final list = [...state.deleteRequestParams.ids];
    list.add(value);
    state = state.copyWith(deleteRequestParams: DeleteEvaluationRecordRequestModel(ids: list));
  }

  void removeDeleteId(String value) {
    final list = [...state.deleteRequestParams.ids];
    final isSuccess = list.remove(value);
    assert(isSuccess, true);

    state = state.copyWith(deleteRequestParams: DeleteEvaluationRecordRequestModel(ids: list));
  }

  void clearTempInput() {
    state = state.copyWith(
      isUsedClearDate: false,
      getRequestParamsTemp: EvaluationRecordRequestParamsTemp(),
    );
  }

  void saveTempInput() {
    if (state.isUsedClearDate) {
      state = state.copyWith(
        getRequestParamsTemp: EvaluationRecordRequestParamsTemp(),
        getRequestParams: state.getRequestParams.copyWith(
          sort: state.getRequestParamsTemp.sort ?? state.getRequestParams.sort,
          fromDate: null,
          toDate: null,
        ),
      );
      return;
    }

    state = state.copyWith(
      getRequestParamsTemp: EvaluationRecordRequestParamsTemp(),
      getRequestParams: state.getRequestParams.copyWith(
        sort: state.getRequestParamsTemp.sort ?? state.getRequestParams.sort,
        fromDate: state.getRequestParamsTemp.fromDate,
        toDate: state.getRequestParamsTemp.toDate,
      ),
    );
  }

  void updateTempOrderOption(SortOption value) {
    state = state.copyWith(getRequestParamsTemp: state.getRequestParamsTemp.copyWith(sort: value.value));
  }

  void clearRequestDeleteIds() {
    state = state.copyWith(deleteRequestParams: DeleteEvaluationRecordRequestModel(ids: []));
  }
}
