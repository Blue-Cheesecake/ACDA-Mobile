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
      isSelected: ref.watch(historyInputStateProvider.select((value) => value.getRequestParams.result)) == null,
      onSelectedColor: DesignSystem.acdaPrimary,
      onPressed: () {
        ref.read(historyInputStateProvider.notifier).updateResultQuery(null);
      },
      clipSideWhenSelected: ClipSide.right,
    );
  }
}
