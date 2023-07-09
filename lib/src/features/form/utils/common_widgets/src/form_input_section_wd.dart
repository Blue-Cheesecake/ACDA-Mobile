import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../../config/config.dart';
import '../../utils.dart';

class FormInputSectionWD extends StatelessWidget {
  const FormInputSectionWD({
    Key? key,
    required this.title,
    required this.updateStateFN,
    required this.category,
    this.currentImageBytes,
  }) : super(key: key);

  final String title;
  final void Function(Uint8List? imageBytes) updateStateFN;
  final ValidationCategory category;
  final Uint8List? currentImageBytes;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.bodyText4Bold.copyWith(color: DesignSystem.g6),
        ),
        const SizedBox(height: 14),
        ImageFormWD(
          updateStateFN: updateStateFN,
          category: category,
          currentImageBytes: currentImageBytes,
        ),
      ],
    );
  }
}
