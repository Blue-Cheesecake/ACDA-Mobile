import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/domain.dart';
import '../logic.dart';

final getBasicInfoUseCaseProvider = Provider.autoDispose<GetBasicInfoUseCase>((ref) {
  final dashboardRepository = ref.watch(dashboardRepositoryProvider);
  return GetBasicInfoUseCase(dashboardRepository: dashboardRepository);
});

final basicInfoStateProvider = StateNotifierProvider.autoDispose<BasicInfoStateNotifier, BasicInfoState>((ref) {
  final getBasicInfoUseCase = ref.watch(getBasicInfoUseCaseProvider);
  return BasicInfoStateNotifier(ref: ref, getBasicInfoUseCase: getBasicInfoUseCase);
});
