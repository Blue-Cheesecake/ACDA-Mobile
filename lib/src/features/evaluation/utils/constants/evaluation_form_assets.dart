import 'package:flutter/material.dart';

class EvaluationFormAssets {
  const EvaluationFormAssets._();

  static Widget get imagePlaceholder => Image.asset(
        'assets/imgs/picke_image_placeholder.png',
        height: 140,
        width: 140,
      );

  static Widget get polygon => Image.asset(
        'assets/icons/polygon.png',
        height: 25,
        width: 25,
      );

  static Widget get statusOverlay => Image.asset(
        'assets/imgs/overlay_multitask.png',
        height: 34,
        width: 123,
      );

  static Widget get submitButtonOverlay => Image.asset(
        'assets/imgs/overlay_submitbutton.png',
        height: 48,
        width: 280,
      );

  static Widget get verticalLine => Image.asset(
        'assets/imgs/overlay_vertical_line.png',
        height: 375,
        width: 50,
      );

  static Widget tabLayoutOverlay({required double height, required double width}) => Image.asset(
        'assets/imgs/overlay_tablayout.png',
        height: height,
        width: width,
      );
}
