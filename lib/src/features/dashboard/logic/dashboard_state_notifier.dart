import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utils/utils.dart';
import 'logic.dart';

class DashboardStateNotifier extends StateNotifier<DashboardState> {
  DashboardStateNotifier() : super(const DashboardState.empty());

  void clearData() {
    state = const DashboardState.empty();
  }

  void addData({required ICommonRecordEntity record}) {
    state.when(
      empty: () {
        state = DashboardState.data(data: [record]);
      },
      data: (data) {
        state = DashboardState.data(data: [...data, record]);
      },
    );
  }
}
