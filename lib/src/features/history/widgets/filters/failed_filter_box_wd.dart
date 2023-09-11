import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/config.dart';
import '../../logic/logic.dart';
import 'utils/utils.dart';

class FailedFilterBoxWD extends ConsumerWidget {
  const FailedFilterBoxWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return HistoryFilterBoxWD(
      title: FilterBoxMessages.failed,
      flex: 2,
      isSelected: ref.watch(historyInputStateProvider.select((value) => value.isSelectedFailedResult)),
      onSelectedColor: DesignSystem.g9,
      onPressed: () {
        if (ref.watch(historyInputStateProvider.select((value) => value.isSelectedFailedResult))) {
          return;
        }
        ref.read(historyInputStateProvider.notifier).updateResultQuery(false);
        ref.read(getRecordsStateProvider.notifier).fetchRecords();
      },
      clipSideWhenSelected: ClipSide.left,
    );
  }
}
