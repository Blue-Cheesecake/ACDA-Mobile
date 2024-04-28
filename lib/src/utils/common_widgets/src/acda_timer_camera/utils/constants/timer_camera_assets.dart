import 'package:flutter/material.dart';

final class TimerCameraAssets {
  TimerCameraAssets._();

  static Widget overlayGuidelineFullBody(final Size size) => Image.asset(
        'assets/imgs/overlay_guideline_full.png',
        width: size.width,
        height: size.height,
        fit: BoxFit.cover,
      );

  static Widget overlayGuidelineUpperBody(final Size size) => Image.asset(
        'assets/imgs/overlay_guideline_upper.png',
        width: size.width,
        height: size.height,
        fit: BoxFit.cover,
      );
}
