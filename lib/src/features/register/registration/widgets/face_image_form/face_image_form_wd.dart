import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../../../../../config/config.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class FaceImageFormWD extends StatelessWidget {
  const FaceImageFormWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (context.loaderOverlay.visible) {
      context.loaderOverlay.hide();
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          FaceImageFormMessages.instruction,
          style: TextStyles.bodyText4.copyWith(color: DesignSystem.g6),
        ),
        const SizedBox(height: 8),
        const FaceImageBoxWD(),
        const SizedBox(height: 8),
        const AllowPDPACheckBoxWD(),
        const SizedBox(height: 100),
      ],
    );
  }
}
