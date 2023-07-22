import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'input.dart';

final filterInputProvider = StateNotifierProvider<FilterInputStateNotifier, FilterInputState>((ref) {
  return FilterInputStateNotifier();
});
