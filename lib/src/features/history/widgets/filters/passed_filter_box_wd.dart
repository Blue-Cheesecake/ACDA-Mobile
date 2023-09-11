import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/config.dart';
import '../../logic/logic.dart';
import 'utils/utils.dart';

class PassedFilterBoxWD extends ConsumerWidget {
  const PassedFilterBoxWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return HistoryFilterBoxWD(
      title: FilterBoxMessages.passed,
      flex: 2,
      isSelected: ref.watch(historyInputStateProvider.select((value) => value.getRequestParams.result)) == true,
      onSelectedColor: DesignSystem.g8,
      onPressed: () {
        ref.read(historyInputStateProvider.notifier).updateResultQuery(true);
      },
      clipSideWhenSelected: ClipSide.horizontal,
    );
  }
}
