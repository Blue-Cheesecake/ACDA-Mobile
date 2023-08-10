import 'package:flutter/widgets.dart';

class FaceImageFormAssets {
  const FaceImageFormAssets._();

  static Widget get faceImageExample => Image.asset(
        'assets/imgs/example_face_photo.png',
        width: 173,
        height: 195,
      );
  static Widget get multipleArrow => Image.asset(
        'assets/imgs/multiple_right_arrows.png',
        width: 90,
        height: 58,
      );
  static Widget get addCircle => Image.asset(
        'assets/imgs/add_cirlce_outlined.png',
        width: 67,
        height: 67,
      );

  static Widget get changeFaceImage => Image.asset(
        'assets/imgs/change_face_image.png',
        width: 51,
        height: 51,
      );
}
