import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../core/core.dart';
import '../data/data.dart';

final infoFormRepositoryProvider = Provider.autoDispose<IInfoFormRepository>((ref) {
  return InfoFormRepository(dataSource: InfoFormRetrofitDataSource(dio: DioClient.client));
});
