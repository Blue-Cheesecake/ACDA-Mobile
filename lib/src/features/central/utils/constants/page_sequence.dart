import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../../../../config/config.dart';
import '../../../../keys/keys.dart';
import '../../../dashboard/dashboard_page.dart';
import '../../../evaluation/evaluation_page_main.dart';
import '../../../history/history_page.dart';
import '../utils.dart';

class PageSequence {
  const PageSequence._();

  static final List<SlidablePageModel> sequence = [
    SlidablePageModel(
      child: const HistoryPage(),
      tabItem: const TabItem(
        activeIcon: Icon(
          Icons.history,
          color: DesignSystem.g29,
          key: CentralKeys.historyButtonNavBarWD,
        ),
        icon: Icon(
          Icons.history,
          color: DesignSystem.g1,
          key: CentralKeys.historyButtonNavBarWD,
        ),
      ),
      onSelectedColor: DesignSystem.g1,
    ),
    SlidablePageModel(
      child: const DashboardPage(),
      tabItem: const TabItem(
        activeIcon: Icon(
          Icons.home,
          color: DesignSystem.g1,
        ),
        icon: Icon(
          Icons.home_outlined,
          color: DesignSystem.g1,
        ),
      ),
      onSelectedColor: DesignSystem.g23,
    ),
    SlidablePageModel(
      child: const EvaluationPageMain(),
      tabItem: const TabItem(
          icon: Icon(
        Icons.person_add,
        color: DesignSystem.g1,
      )),
      onSelectedColor: DesignSystem.g8,
    ),
  ];
}
