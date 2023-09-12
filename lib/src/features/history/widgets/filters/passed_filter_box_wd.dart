import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/config.dart';
import '../../../../utils/utils.dart';
import '../../logic/logic.dart';
import 'utils/utils.dart';

class PassedFilterBoxWD extends ConsumerWidget {
  const PassedFilterBoxWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return HistoryFilterBoxWD(
      title: ACDACommonMessages.passedTitle,
      flex: 2,
      isSelected: ref.watch(historyInputStateProvider.select((value) => value.isSelectedPassedResult)),
      onSelectedColor: DesignSystem.g8,
      onPressed: () {
        if (ref.watch(historyInputStateProvider.select((value) => value.isSelectedPassedResult))) {
          return;
        }
        ref.read(historyInputStateProvider.notifier).updateResultQuery(true);
        ref.read(getRecordsStateProvider.notifier).fetchRecords();
      },
      clipSideWhenSelected: ClipSide.horizontal,
    );
  }
}
