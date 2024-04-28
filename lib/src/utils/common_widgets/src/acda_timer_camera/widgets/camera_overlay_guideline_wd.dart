import 'package:flutter/material.dart';

import '../../../../utils.dart';
import '../utils/utils.dart';

class CameraOverlayGuidelineWD extends StatelessWidget {
  const CameraOverlayGuidelineWD({required this.cameraSection, Key? key}) : super(key: key);

  final CameraSection cameraSection;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return switch (cameraSection) {
      CameraSection.fullBody => TimerCameraAssets.overlayGuidelineFullBody(size),
      CameraSection.upperBody => TimerCameraAssets.overlayGuidelineUpperBody(size),
    };
  }
}
