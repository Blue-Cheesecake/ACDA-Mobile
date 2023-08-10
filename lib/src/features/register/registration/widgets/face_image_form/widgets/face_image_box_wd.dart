import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../../../../../../config/config.dart';
import '../../../../../../core/core.dart';
import '../../../../../../utils/utils.dart';
import '../../../../register_form/register_form.dart';
import '../../../registration.dart';
import '../utils/utils.dart';

class FaceImageBoxWD extends ConsumerWidget {
  const FaceImageBoxWD({Key? key}) : super(key: key);

  void _updateCurrentImage({required Future<XFile?> source, required WidgetRef ref}) async {
    final XFile? pickedImage = await source;
    if (pickedImage == null) {
      return;
    }
    ref.read(registerFormInputProvider.notifier).updateFaceImage(pickedImage);
  }

  void _onTap(BuildContext context, WidgetRef ref) {
    showACDABottomSheet(
      context: context,
      child: ACDABottomSheet(
        child: ListView(
          shrinkWrap: true,
          children: [
            ACDACameraOptionWD(
              title: ACDACommonMessages.galleryOption,
              onPressed: () => _updateCurrentImage(source: ACDAImagePicker.pickImageFromGallery(), ref: ref),
              color: DesignSystem.g12,
            ),
            ACDACameraOptionWD(
              title: ACDACommonMessages.cameraOption,
              onPressed: () => _updateCurrentImage(source: ACDAImagePicker.takeAPhoto(), ref: ref),
              color: DesignSystem.g12,
            ),
            ACDACameraOptionWD(
              title: ACDACommonMessages.close,
              onPressed: () {},
              color: DesignSystem.g9,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Color borderColor = DesignSystem.g19;

    final bool? isFaceImageAlreadyPassed =
        ref.watch(registerFormInputProvider.select((value) => value.isFaceImageAlreadyPassed));

    if (isFaceImageAlreadyPassed == null) {
      borderColor = DesignSystem.g19;
    } else if (isFaceImageAlreadyPassed) {
      borderColor = DesignSystem.g8;
    } else {
      borderColor = DesignSystem.g9;
    }

    ref.watch(registrationStateProvider).when(
      initial: () {
        if (context.mounted && context.loaderOverlay.visible) {
          context.loaderOverlay.hide();
        }
      },
      loading: () {
        if (context.mounted && !context.loaderOverlay.visible) {
          context.loaderOverlay.show();
        }
      },
      success: () {
        if (context.mounted && context.loaderOverlay.visible) {
          context.loaderOverlay.hide();
        }
      },
      error: () {
        if (context.mounted && context.loaderOverlay.visible) {
          context.loaderOverlay.hide();
        }
      },
    );

    final XFile? imageFile = ref.watch(registerFormInputProvider.select((value) => value.faceImage));

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      height: 427,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(31),
      ),
      child: imageFile == null
          ? _EmptyContainer(onPressed: () => _onTap(context, ref))
          : _FilledImageContainer(
              onPressed: () => _onTap(context, ref),
              image: imageFile,
              isPassed: isFaceImageAlreadyPassed,
            ),
    );
  }
}

class _FilledImageContainer extends StatelessWidget {
  const _FilledImageContainer({required this.image, required this.onPressed, required this.isPassed});

  final XFile image;
  final void Function() onPressed;
  final bool? isPassed;

  @override
  Widget build(BuildContext context) {
    // Error Cases
    List<Color> bottomColors = [
      DesignSystem.g9,
      DesignSystem.g9.withOpacity(0.1),
    ];

    List<Color> topColors = [
      DesignSystem.g9.withOpacity(0.3),
      DesignSystem.g9.withOpacity(0.01),
    ];

    if (isPassed ?? false) {
      bottomColors = [
        DesignSystem.g8,
        DesignSystem.g8.withOpacity(0.1),
      ];
    }

    final bottomLinearGradient = LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.center,
      colors: bottomColors,
    );

    final topLinearGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: topColors,
    );

    return InkWell(
      onTap: onPressed,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(31)),
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(31)),
              ),
              child: Image.file(
                File(image.path),
                fit: BoxFit.cover,
              ),
            ),
            if (isPassed != null && !isPassed!)
              Positioned(
                top: 10,
                right: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FaceImageFormAssets.changeFaceImage,
                    Text(
                      FaceImageFormMessages.change,
                      style: TextStyles.bodyText4.copyWith(
                        color: DesignSystem.g1,
                      ),
                    )
                  ],
                ),
              ),
            if (isPassed != null)
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(gradient: bottomLinearGradient),
              ),
            if (isPassed != null && !isPassed!)
              Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(gradient: topLinearGradient),
              ),
            if (isPassed != null && !isPassed!)
              Positioned(
                bottom: 11,
                left: 17,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      FaceImageFormMessages.invalidFaceImageError,
                      style: TextStyles.bodyText4Bold.copyWith(color: DesignSystem.g1),
                    ),
                    Text(FaceImageFormMessages.invalidFaceImageInstruction,
                        style: TextStyles.bodyText4.copyWith(color: DesignSystem.g1))
                  ],
                ),
              ),
            if (isPassed != null && !isPassed!)
              Positioned(
                top: 10,
                right: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FaceImageFormAssets.changeFaceImage,
                    Text(
                      FaceImageFormMessages.change,
                      style: TextStyles.bodyText4.copyWith(
                        color: DesignSystem.g1,
                      ),
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _EmptyContainer extends StatelessWidget {
  const _EmptyContainer({required this.onPressed});

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: const Radius.circular(31),
        strokeWidth: 2,
        color: DesignSystem.g19,
        dashPattern: const [11, 11, 11, 11],
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(31)),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  DesignSystem.g3,
                  DesignSystem.g20,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                FaceImageFormAssets.faceImageExample,
                const SizedBox(height: 20),
                Text(
                  FaceImageFormMessages.addingFaceImage,
                  textAlign: TextAlign.center,
                  style: TextStyles.header5.copyWith(
                    color: DesignSystem.acdaPrimary,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FaceImageFormAssets.multipleArrow,
                    const SizedBox(width: 10),
                    FaceImageFormAssets.addCircle,
                    const SizedBox(width: 20),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
