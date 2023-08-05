import 'package:flutter/widgets.dart';

class StepAssets {
  StepAssets._();

  static Widget get infoAsset => Image.asset(
        'assets/icons/info_squared.png',
        height: 29,
        width: 29,
      );

  static Widget get faceIdAsset => Image.asset(
        'assets/icons/face_id.png',
        height: 29,
        width: 29,
      );

  static Widget get checkMarkAsset => Image.asset(
        'assets/icons/checkmark.png',
        height: 29,
        width: 29,
      );
}
