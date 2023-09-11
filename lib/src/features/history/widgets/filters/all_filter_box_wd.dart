import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/config.dart';
import '../../logic/logic.dart';
import 'utils/utils.dart';

class AllFilterBoxWD extends ConsumerWidget {
  const AllFilterBoxWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return HistoryFilterBoxWD(
      title: FilterBoxMessages.all,
      flex: 1,
      isSelected: ref.watch(historyInputStateProvider.select((value) => value.isSelectedAllResult)),
      onSelectedColor: DesignSystem.acdaPrimary,
      onPressed: () {
        if (ref.watch(historyInputStateProvider.select((value) => value.isSelectedAllResult))) {
          return;
        }
        ref.read(historyInputStateProvider.notifier).updateResultQuery(null);
        ref.read(getRecordsStateProvider.notifier).fetchRecords();
      },
      clipSideWhenSelected: ClipSide.right,
    );
  }
}
