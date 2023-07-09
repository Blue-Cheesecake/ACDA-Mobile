import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../config/config.dart';
import '../../../../../core/core.dart';
import '../../../../../utils/utils.dart';
import '../../../logic/logic.dart';
import '../../utils.dart';

class ImageFormWD extends ConsumerWidget {
  const ImageFormWD({
    Key? key,
    required this.updateStateFN,
    required this.category,
    this.currentImageBytes,
  }) : super(key: key);

  final ValidationCategory category;
  final void Function(Uint8List? imageBytes) updateStateFN;
  final Uint8List? currentImageBytes;

  void _updateCurrentImage({required Future<XFile?> source, required WidgetRef ref}) async {
    final XFile? pickedImage = await source;
    if (pickedImage == null) {
      return;
    }
    final Uint8List imageBytes = await pickedImage.readAsBytes();

    ref.read(imageValidationProvider.notifier).validate(
          imageFile: pickedImage,
          category: category,
          onSucessCallback: (result) {
            if (result.isPassed) {
              updateStateFN(imageBytes);
            }
          },
          onErrorCallback: () {},
        );
  }

  void _onTap(BuildContext context, WidgetRef ref) {
    showACDABottomSheet(
      context: context,
      child: ACDABottomSheet(
        child: ListView(
          shrinkWrap: true,
          children: [
            _Option(
              title: FormMessages.galleryOption,
              onPressed: () => _updateCurrentImage(source: ACDAImagePicker.pickImageFromGallery(), ref: ref),
              color: DesignSystem.g12,
            ),
            _Option(
              title: FormMessages.cameraOption,
              onPressed: () => _updateCurrentImage(source: ACDAImagePicker.takeAPhoto(), ref: ref),
              color: DesignSystem.g12,
            ),
            _Option(
              title: FormMessages.close,
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
    return InkWell(
      onTap: () => _onTap(context, ref),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        child: DottedBorder(
          radius: const Radius.circular(6),
          color: DesignSystem.g3,
          strokeWidth: 2,
          strokeCap: StrokeCap.round,
          dashPattern: const [4, 4, 4, 4],
          child: currentImageBytes == null
              ? const _UpLoadImageContainer()
              : _FilledImageContainer(imageBytes: currentImageBytes!),
        ),
      ),
    );
  }
}

class _FilledImageContainer extends StatelessWidget {
  const _FilledImageContainer({required this.imageBytes});

  final Uint8List imageBytes;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(3)),
        color: DesignSystem.g2,
      ),
      child: Image.memory(
        imageBytes,
        fit: BoxFit.cover,
        filterQuality: FilterQuality.high,
      ),
    );
  }
}

class _UpLoadImageContainer extends StatelessWidget {
  const _UpLoadImageContainer();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(3)),
        color: DesignSystem.g2,
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.add, size: 75, color: DesignSystem.g5),
            const SizedBox(height: 5),
            Text(
              FormMessages.uploadImage,
              style: TextStyles.bodyText4.copyWith(color: DesignSystem.g5),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

class _Option extends StatelessWidget {
  const _Option({required this.title, required this.onPressed, required this.color});

  final String title;
  final void Function() onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        title: Center(
            child: Text(
          title,
          style: TextStyles.bodyText2.copyWith(color: color),
        )),
        onTap: () {
          Navigator.of(context).pop();
          onPressed();
        },
      ),
    );
  }
}
