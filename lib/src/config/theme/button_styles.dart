import 'package:flutter/material.dart';

import '../config.dart';

class ButtonStyles {
  const ButtonStyles._();

  static ButtonStyle get getStartedStyle => ElevatedButton.styleFrom(
        backgroundColor: DesignSystem.g8,
        elevation: 0,
      );
}
