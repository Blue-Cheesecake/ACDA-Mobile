import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'logic.dart';

final centralStateProvider = StateNotifierProvider<CentralStateNotifier, CentralState>((ref) {
  return CentralStateNotifier();
});
