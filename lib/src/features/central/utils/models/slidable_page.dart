import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';

class SlidablePageModel {
  SlidablePageModel({required this.child, required this.tabItem, required this.onSelectedColor});

  final Widget child;
  final TabItem tabItem;
  final Color onSelectedColor;
}
