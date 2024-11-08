import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/config.dart';
import '../../../../../core/core.dart';
import '../../../../../utils/common_widgets/src/acda_timer_camera/logic/logic.dart';
import '../../../../../utils/utils.dart';
import '../../logic/logic.dart';
import '../utils.dart';

class EvaluationImageBoxWD extends ConsumerWidget {
  const EvaluationImageBoxWD({
    required this.onImageSelected,
    required this.nextField,
    required this.currentLevel,
    required this.cameraSection,
    this.currentImage,
    Key? key,
  }) : super(key: key);

  final XFile? currentImage;
  final void Function(XFile pickedImage) onImageSelected;
  final EvaluationFormField? nextField;
  final CameraSection cameraSection;
  final int currentLevel;

  void _updateCurrentImage({required XFile? pickedImage, required WidgetRef ref}) async {
    if (pickedImage == null) {
      return;
    }

    onImageSelected(pickedImage);

    if (nextField == null) {
      return;
    }

    ref.read(evaluationFormInputStateProvider.notifier).updateCurrentField(nextField!);
    ACDAEventBus.instance.fire(SelectEvaluationFormFieldEvent(
      level: currentLevel + 1,
      formField: nextField!,
    ));
  }

  void _showRequestPopup(BuildContext context, WidgetRef ref) {
    return showACDAPopupFN(
      context: context,
      popup: ACDAUngrantedAccessPopupWD(
        content: ACDACommonMessages.ungrantedPhotoPermission,
        requestCallbackfn: ACDAPermission.instance.requestCameraAccess,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isCameraSwiting = ref.watch(
      acdaTimerCameraStateProvider
          .call(EvaluationFormConstant.evaluationImageBoxProviderKey)
          .select((value) => value.isSwitching),
    );
    if (isCameraSwiting) {
      Future.delayed(const Duration(milliseconds: 500)).then((_) {
        if (context.mounted) {
          ref
              .read(acdaTimerCameraStateProvider.call(EvaluationFormConstant.evaluationImageBoxProviderKey).notifier)
              .updateIsSwitching(false);
          showACDACamera(
            context: context,
            providerKey: EvaluationFormConstant.evaluationImageBoxProviderKey,
            updateImageCallback: _updateCurrentImage,
            cameraSection: cameraSection,
          );
        }
      });
    }

    return InkWell(
      onTap: () => ACDAPermission.instance.isCameraAccessGranted.then((isGranted) {
        if (isGranted) {
          showACDACamera(
            context: context,
            providerKey: EvaluationFormConstant.evaluationImageBoxProviderKey,
            updateImageCallback: _updateCurrentImage,
            cameraSection: cameraSection,
          );
          return;
        }

        _showRequestPopup(context, ref);
      }),
      child: Container(
        height: 346,
        width: double.infinity,
        decoration: BoxDecoration(
          color: DesignSystem.g1,
          borderRadius: BorderRadius.circular(31),
          border: Border.all(width: 2.5, color: DesignSystem.g22),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.grey[400]!,
              Colors.white.withAlpha(0),
              Colors.transparent,
            ],
            stops: const [0, 0.04, 0.1],
          ),
        ),
        child: currentImage == null
            ? Center(child: EvaluationFormAssets.imagePlaceholder)
            : ClipRRect(
                borderRadius: BorderRadius.circular(28),
                child: Image.file(File(currentImage!.path), fit: BoxFit.cover),
              ),
      ),
    );
  }
}
