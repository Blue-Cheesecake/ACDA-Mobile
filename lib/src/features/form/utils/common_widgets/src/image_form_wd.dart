import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../../../config/config.dart';
import '../../utils.dart';

class ImageFormWD extends StatelessWidget {
  const ImageFormWD({Key? key, required this.onTap}) : super(key: key);

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        child: DottedBorder(
          radius: const Radius.circular(6),
          color: DesignSystem.g3,
          strokeWidth: 2,
          strokeCap: StrokeCap.round,
          dashPattern: const [4, 4, 4, 4],
          child: Container(
            height: 167,
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
          ),
        ),
      ),
    );
  }
}
