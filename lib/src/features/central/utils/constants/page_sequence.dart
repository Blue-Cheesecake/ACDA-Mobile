import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../../../../config/config.dart';
import '../../../dashboard/dashboard_page.dart';
import '../../../evaluation/evaluation_form_page.dart';
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
        ),
        icon: Icon(
          Icons.history,
          color: DesignSystem.g1,
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
      child: const EvaluationFormPage(),
      tabItem: const TabItem(
          icon: Icon(
        Icons.person_add,
        color: DesignSystem.g1,
      )),
      onSelectedColor: DesignSystem.g8,
    ),
  ];
}
