import 'package:flutter/material.dart';

class LoginFormAssets {
  const LoginFormAssets._();

  static ImageProvider get background => const AssetImage('assets/imgs/ACDA-bg-Login-nologo.png');
  static Widget get appName => Image.asset(
        'assets/imgs/ACDA-AppName.png',
        width: 257,
        height: 110,
      );
  static Widget get appLogo => Image.asset(
        'assets/icons/ACDA-AppIcon-Pure.png',
        width: 115,
        height: 99,
      );
}
