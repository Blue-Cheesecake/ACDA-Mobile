import 'package:flutter/material.dart';

import '../config.dart';

class ButtonStyles {
  const ButtonStyles._();

  static ButtonStyle get getStartedStyle => ElevatedButton.styleFrom(
        backgroundColor: DesignSystem.g8,
        elevation: 0,
        splashFactory: NoSplash.splashFactory,
      );

  static ButtonStyle submitButtonStyle({required bool isEnabled}) => ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 11),
        backgroundColor: isEnabled ? DesignSystem.g8 : DesignSystem.g4,
        splashFactory: NoSplash.splashFactory,
        elevation: 4,
      );

  static ButtonStyle get backButtonStyle => const ButtonStyle(
        splashFactory: NoSplash.splashFactory,
      );

  static ButtonStyle get doneButtonStyle => ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        splashFactory: NoSplash.splashFactory,
      );

  static ButtonStyle nextFormButtonStyle({Color? color}) => ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 0,
        splashFactory: NoSplash.splashFactory,
      );
}
