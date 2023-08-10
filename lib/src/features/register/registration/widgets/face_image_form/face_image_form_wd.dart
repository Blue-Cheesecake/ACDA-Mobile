import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../../../../../config/config.dart';
import '../../../../../utils/utils.dart';
import 'face_validation/logic/logic.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class FaceImageFormWD extends ConsumerWidget {
  const FaceImageFormWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (context.loaderOverlay.visible) {
      context.loaderOverlay.hide();
    }

    bool isLoading = false;

    ref.watch(faceValidationProvider).when(
      initial: () {
        isLoading = false;
      },
      loading: () {
        isLoading = true;
      },
      validated: (_) {
        isLoading = false;
      },
      error: (_) {
        isLoading = false;
      },
      unknownError: () {
        isLoading = false;
      },
    );

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
        if (isLoading) const SizedBox(height: 18),
        if (isLoading) const Center(child: ACDALoadingWD()),
        const SizedBox(height: 8),
        const AllowPDPACheckBoxWD(),
        const SizedBox(height: 100),
      ],
    );
  }
}
