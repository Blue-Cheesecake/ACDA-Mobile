import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const DashboardState._();

  const factory DashboardState.empty() = _DashboardStateEmpty;
  // HACK: use string as a temporary data type. Reaplce with record widget
  const factory DashboardState.data({required List<String> data}) = _DashboardStateData;

  bool get isEmptyState => this is _DashboardStateEmpty;
}
