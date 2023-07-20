import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/utils.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const DashboardState._();

  const factory DashboardState.empty() = _DashboardStateEmpty;
  const factory DashboardState.data({required List<ICommonRecordEntity> data}) = _DashboardStateData;

  bool get isEmptyState => this is _DashboardStateEmpty;
}
