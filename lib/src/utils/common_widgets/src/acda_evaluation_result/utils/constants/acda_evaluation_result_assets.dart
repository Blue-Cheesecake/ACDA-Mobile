import 'package:flutter/material.dart';

class ACDAEvaluationResultAssets {
  const ACDAEvaluationResultAssets._();

  static Widget get passedIndicator => Image.asset(
        'assets/imgs/passed_indicator.png',
        width: 34,
        height: 34,
      );
  static Widget get failedIndicator => Image.asset(
        'assets/imgs/failed_indicator.png',
        width: 34,
        height: 34,
      );

  static Widget get fadedAppIcon => Image.asset(
        'assets/icons/ACDA-AppIcon-Pure.png',
        width: 323,
        height: 288,
        fit: BoxFit.cover,
      );
}
