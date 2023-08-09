import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/config.dart';
import 'logic/logic.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class MultiStepsWD extends ConsumerWidget {
  const MultiStepsWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 8),
      decoration: const BoxDecoration(
        color: DesignSystem.g1,
        borderRadius: BorderRadius.all(Radius.circular(99)),
      ),
      child: Row(
        children: [
          // Info
          StepIconWD(
            icon: StepAssets.infoAsset,
            status: ref.watch(multiStepStateProvider.select((value) => value.info)),
          ),

          const SizedBox(width: 7),
          StepDividerWD(status: ref.watch(multiStepStateProvider.select((value) => value.info))),
          const SizedBox(width: 7),

          // Face Photo
          StepIconWD(
            icon: StepAssets.faceIdAsset,
            status: ref.watch(multiStepStateProvider.select((value) => value.faceImage)),
          ),

          const SizedBox(width: 7),
          StepDividerWD(status: ref.watch(multiStepStateProvider.select((value) => value.completion))),
          const SizedBox(width: 7),

          // Completed
          StepIconWD(
            icon: StepAssets.checkMarkAsset,
            status: ref.watch(multiStepStateProvider.select((value) => value.completion)),
          ),
        ],
      ),
    );
  }
}
