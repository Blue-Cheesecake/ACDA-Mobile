import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/core.dart';
import '../data/data.dart';

final dashboardRepositoryProvider = Provider.autoDispose<IDashboardRepository>((ref) {
  return DashboardRepository(dashboardDataSource: DashboardRetrofitDataSource(dio: DioClient.client));
});
