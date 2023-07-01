import 'package:flutter/material.dart';

import 'theme.dart';

ThemeData getACDATheme() {
  return ThemeData(
    fontFamily: DesignSystem.fontFamily,
    primaryColor: DesignSystem.g7,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: DesignSystem.g7,
      titleTextStyle: TextStyles.header5.copyWith(color: DesignSystem.g1),
    ),
    scaffoldBackgroundColor: DesignSystem.g1,
    progressIndicatorTheme: const ProgressIndicatorThemeData(color: DesignSystem.g7),
    disabledColor: DesignSystem.g4,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: DesignSystem.g7,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(99),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 11),
        elevation: 3,
        splashFactory: NoSplash.splashFactory,
      ),
    ),
  );
}
