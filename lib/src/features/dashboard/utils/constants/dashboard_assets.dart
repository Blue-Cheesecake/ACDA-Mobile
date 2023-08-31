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

  static Widget get expectedDressBoth => Image.asset(
        'assets/imgs/suitable_dress_both.png',
        width: 293,
        height: 559,
      );

  static Widget get suitableDressMale => Image.asset(
        'assets/imgs/suitable_dress_male.png',
        width: 125,
        height: 445,
      );

  static Widget get suitableDressFemale => Image.asset(
        'assets/imgs/suitable_dress_female.png',
        width: 125,
        height: 445,
      );
}
