import 'dart:developer';
import 'dart:ui';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/config.dart';
import '../logic/logic.dart';
import '../utils/utils.dart';

class CameraCaptureButtonWd extends ConsumerWidget {
  const CameraCaptureButtonWd({
    required this.cameraController,
    required this.initializeControllerFuture,
    required this.updateImageCallback,
    required this.providerKey,
    super.key,
  });

  final CameraController cameraController;
  final Future<void> initializeControllerFuture;
  final void Function({required XFile? pickedImage, required WidgetRef ref}) updateImageCallback;
  final String providerKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final XFile? image = ref.watch(acdaTimerCameraStateProvider.call(providerKey).select((value) => value.pickedImage));
    final bool isButtonEnabled =
        ref.watch(acdaTimerCameraStateProvider.call(providerKey).select((value) => value.isStartCounting)) == false;

    if (image == null) {
      return GestureDetector(
        onTap: () async {
          if (!isButtonEnabled) {
            return;
          }

          try {
            await initializeControllerFuture;

            final timerOption =
                ref.read(acdaTimerCameraStateProvider.call(providerKey).select((value) => value.timerOption));

            switch (timerOption) {
              case TimerOption.none:
                ref
                    .read(acdaTimerCameraStateProvider.call(providerKey).notifier)
                    .startCounting(counting: 0, cameraController: cameraController);
              case TimerOption.threeSec:
                ref
                    .read(acdaTimerCameraStateProvider.call(providerKey).notifier)
                    .startCounting(counting: 3, cameraController: cameraController);
                break;
              case TimerOption.tenSec:
                ref
                    .read(acdaTimerCameraStateProvider.call(providerKey).notifier)
                    .startCounting(counting: 10, cameraController: cameraController);
                break;
              default:
            }
          } catch (e) {
            log(e.toString());
          }
        },
        child: Container(
          width: 75,
          height: 75,
          decoration: const BoxDecoration(color: DesignSystem.g1, shape: BoxShape.circle),
          padding: const EdgeInsets.all(6),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: DesignSystem.g1,
              shape: BoxShape.circle,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(99),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: DesignSystem.g1.withOpacity(0.0),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
        updateImageCallback(
          pickedImage: ref.read(acdaTimerCameraStateProvider.call(providerKey).select((value) => value.pickedImage)),
          ref: ref,
        );
        ref.read(acdaTimerCameraStateProvider.call(providerKey).notifier).updatePickedImage(null);
      },
      child: Container(
        height: 75,
        width: 75,
        decoration: const BoxDecoration(
          color: DesignSystem.g1,
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.check,
          size: 55,
          color: DesignSystem.g8,
        ),
      ),
    );
  }
}
