import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../../../../config/config.dart';
import '../../../../core/core.dart';
import '../../data/data.dart';
import '../logic/logic.dart';
import '../utils/utils.dart';

class GoBackHomeButtonWD extends ConsumerWidget {
  const GoBackHomeButtonWD({required this.completedSaveModel, Key? key}) : super(key: key);

  final SaveResultRequestModel completedSaveModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      onPressed: () async {
        await ref.read(saveEvaluationResultStateProvider.notifier).saveResult(
              requestModel: completedSaveModel,
              onSuccessCallback: () {
                context.loaderOverlay.hide();
                ACDANavigation.instance.go(RoutePath.central);
              },
              onErrorCallback: () {
                if (context.mounted) {
                  context.loaderOverlay.hide();
                }
              },
            );
      },
      child: Text(
        EvaluationResultMessages.goBackHome,
        style: TextStyles.bodyText4.copyWith(
          color: DesignSystem.g42,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
