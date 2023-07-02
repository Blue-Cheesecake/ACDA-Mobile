import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'logic.dart';

class DashboardStateNotifier extends StateNotifier<DashboardState> {
  DashboardStateNotifier() : super(const DashboardState.empty());
}
