import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'logic.dart';

final dashboardStateProvider = StateNotifierProvider<DashboardStateNotifier, DashboardState>((ref) {
  return DashboardStateNotifier();
});
