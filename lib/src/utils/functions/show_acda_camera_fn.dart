import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils.dart';

void showACDACamera({
  required BuildContext context,
  required final String providerKey,
  required void Function({required XFile? pickedImage, required WidgetRef ref}) updateImageCallback,
}) {
  showACDABottomSheet(
    context: context,
    child: AcdaTimerCameraWd(providerKey: providerKey, updateImageCallback: updateImageCallback),
    expand: true,
  );
}
