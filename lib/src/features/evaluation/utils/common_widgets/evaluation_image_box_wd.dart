import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../config/config.dart';
import '../../../../core/core.dart';
import '../../../../utils/utils.dart';
import '../utils.dart';

class EvaluationImageBoxWD extends StatelessWidget {
  const EvaluationImageBoxWD({required this.onImageSelected, Key? key, this.currentImage}) : super(key: key);

  final XFile? currentImage;
  final void Function(XFile pickedImage) onImageSelected;

  void _updateCurrentImage() async {
    final XFile? pickedImage = await ACDAImagePicker.takeAPhoto();
    if (pickedImage == null) {
      return;
    }
    onImageSelected(pickedImage);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showACDABottomSheet(
        context: context,
        child: ACDABottomSheet(
          child: ListView(
            shrinkWrap: true,
            children: [
              ACDACameraOptionWD(
                title: ACDACommonMessages.cameraOption,
                onPressed: () {
                  ACDAPermission.instance.isCameraAccessGranted.then((isGranted) {
                    if (isGranted) {
                      _updateCurrentImage();
                      return;
                    }

                    showACDAPopupFN(
                      context: context,
                      popup: ACDAUngrantedAccessPopupWD(
                        content: ACDACommonMessages.ungrantedPhotoPermission,
                        requestCallbackfn: ACDAPermission.instance.requestCameraAccess,
                        updateImageCallbackfn: () => _updateCurrentImage(),
                      ),
                    );
                  });
                },
                color: DesignSystem.g12,
              ),
              ACDACameraOptionWD(
                title: ACDACommonMessages.close,
                onPressed: () {},
                color: DesignSystem.g9,
              )
            ],
          ),
        ),
      ),
      child: Container(
        height: 346,
        decoration: BoxDecoration(
          color: DesignSystem.g1,
          borderRadius: BorderRadius.circular(31),
          border: Border.all(width: 1, color: DesignSystem.g22),
        ),
        child: currentImage == null
            ? Center(child: EvaluationFormAssets.imagePlaceholder)
            : Image.file(File(currentImage!.path)),
      ),
    );
  }
}
