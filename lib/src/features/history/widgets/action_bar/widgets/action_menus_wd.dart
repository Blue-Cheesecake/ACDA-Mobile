import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/config.dart';
import '../../../../../utils/utils.dart';
import '../../../logic/logic.dart';
import '../../widgets.dart';
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

  void _onPressedDelete() {
    ref.read(getRecordsStateProvider).whenOrNull(
      data: (_) {
        if (!(ref.read(historyModeStateProvider.select((value) => value.isDeletingMode)))) {
          ref.read(historyModeStateProvider.notifier).enterDeletingMode();
          return;
        }
        if (ref.read(historyInputStateProvider.select((value) => value.isDeleteIdRequestEmpty))) {
          return;
        }
        showACDAPopupFN(context: context, popup: const DeletePopupWD());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final isGotData = ref.watch(getRecordsStateProvider.select((value) => value.isGotData));
    final isDeletingMode = ref.watch(historyModeStateProvider.select((value) => value.isDeletingMode));
    final isDeleteIdRequestEmpty = ref.watch(historyInputStateProvider.select((value) => value.isDeleteIdRequestEmpty));

    bool isDeleteButtonEnabled = true;

    if (!isGotData) {
      isDeleteButtonEnabled = false;
    } else if (isGotData && isDeleteIdRequestEmpty && isDeletingMode) {
      isDeleteButtonEnabled = false;
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ActionBarAssets.actionArrow,
        const VerticalDivider(
          color: DesignSystem.g4,
          thickness: 1,
        ),
        const SizedBox(width: 8),

        // Filter Adjustment Button
        InkWell(
          onTap: () {
            // disable onPressed while using deleting mode
            if (ref.read(historyModeStateProvider.select((value) => value.isDeletingMode))) {
              return;
            }

            displayOverlay(
              context: context,
              child: FilterAdjustmentBackdropWD(
                removeOverlay: removeOverlay,
                subtitle: ActionBarMessages.historyTitle,
                mainTitle: ActionBarMessages.adjustTitle,
              ),
            );
          },
          child: Icon(
            Icons.manage_search_rounded,
            size: 35,
            color: ref.watch(historyModeStateProvider.select((value) => value.isDeletingMode))
                ? DesignSystem.disable
                : DesignSystem.acdaPrimary,
          ),
        ),
        const SizedBox(width: 8),
        const VerticalDivider(
          color: DesignSystem.g4,
          thickness: 1,
        ),
        const SizedBox(width: 8),

        // Delete Management Button
        InkWell(
          onTap: _onPressedDelete,
          child: Icon(
            Icons.delete_outline_rounded,
            size: 35,
            color: isDeleteButtonEnabled ? DesignSystem.acdaPrimary : DesignSystem.disable,
          ),
        ),
      ],
    );
  }
}
