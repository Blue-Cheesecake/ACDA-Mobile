import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils.dart';

void showACDACamera(
    BuildContext context, void Function({required XFile? pickedImage, required WidgetRef ref}) updateImageCallback) {
  showACDABottomSheet(
    context: context,
    child: AcdaTimerCameraWd(updateImageCallback: updateImageCallback),
    expand: true,
  );
}
