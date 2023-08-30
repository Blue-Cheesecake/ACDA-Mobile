import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/utils.dart';
import 'logic.dart';

class CentralStateNotifier extends StateNotifier<CentralState> {
  CentralStateNotifier() : super(CentralState());

  void updateCurrentPage(int index) {
    state = state.copyWith(currentPage: index);
  }

  void updateNotchColor({required int index}) {
    state = state.copyWith(notchColor: PageSequence.sequence[index].onSelectedColor);
  }
}
