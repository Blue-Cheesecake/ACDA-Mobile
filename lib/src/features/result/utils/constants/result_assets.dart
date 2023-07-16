import 'package:flutter/material.dart';

class ResultAssets {
  const ResultAssets._();

  static Widget get failedAsset => Image.asset(
        'assets/imgs/failed_indicator.png',
        width: 156.83,
        height: 156.83,
      );

  static Widget get passedAsset => Image.asset(
        'assets/imgs/passed_indicator.png',
        width: 156.83,
        height: 156.83,
      );
}
