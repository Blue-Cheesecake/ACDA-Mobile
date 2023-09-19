import 'package:flutter/material.dart';
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

  void initiazlieTabController(TabController value) {
    state = state.copyWith(tabController: value);
  }

  void initializePageController(PageController value) {
    state = state.copyWith(pageController: value);
  }

  void animateToEvaluationForm() {
    state.tabController?.animateTo(
      2,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
    state.pageController?.animateToPage(
      2,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }
}
