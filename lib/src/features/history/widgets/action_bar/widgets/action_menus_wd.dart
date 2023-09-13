import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/config.dart';
import '../../../../../utils/utils.dart';
import '../../../logic/logic.dart';
import '../utils/utils.dart';
import 'filter_adjustment/filter_adjustment.dart';

class ActionMenusWD extends ConsumerStatefulWidget {
  const ActionMenusWD({Key? key}) : super(key: key);

  @override
  ConsumerState<ActionMenusWD> createState() => _ActionMenusWDState();
}

class _ActionMenusWDState extends ConsumerState<ActionMenusWD> with IACDAOverlayCreator {
  @override
  void onRemoveCallbackfn() {
    ref.read(historyInputStateProvider.notifier).clearTempInput();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ActionBarAssets.actionArrow,
        const VerticalDivider(
          color: DesignSystem.g4,
          thickness: 1,
        ),
        const SizedBox(width: 8),
        InkWell(
          onTap: () {
            displayOverlay(
              context: context,
              child: FilterAdjustmentBackdropWD(
                removeOverlay: removeOverlay,
                subtitle: ActionBarMessages.historyTitle,
                mainTitle: ActionBarMessages.adjustTitle,
              ),
            );
          },
          child: ActionBarAssets.adjustIcon,
        ),
        const SizedBox(width: 8),
        const VerticalDivider(
          color: DesignSystem.g4,
          thickness: 1,
        ),
        const SizedBox(width: 8),
        InkWell(onTap: () {}, child: ActionBarAssets.deleteIcon),
      ],
    );
  }
}
