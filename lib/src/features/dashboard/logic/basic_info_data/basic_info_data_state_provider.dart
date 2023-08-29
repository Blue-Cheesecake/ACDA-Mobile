import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'basic_info_data.dart';

final basicInfoDataStateProvider = StateNotifierProvider<BasicInfoDataStateNotifier, BasicInfoDataState>((ref) {
  return BasicInfoDataStateNotifier();
});
