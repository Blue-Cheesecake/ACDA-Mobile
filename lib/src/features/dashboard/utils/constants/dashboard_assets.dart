import 'package:flutter/material.dart';

class DashboardAssets {
  const DashboardAssets._();

  static Widget get muLogo => Image.asset(
        'assets/imgs/mu_logo.png',
        width: 75,
        height: 75,
      );

  static Widget get happyIcon => Image.asset(
        'assets/icons/happy_icon.png',
        width: 40,
        height: 40,
      );

  static Widget get dataValidationImg => Image.asset(
        'assets/imgs/data_validation_img.png',
        width: 75,
        height: 75,
      );
}
