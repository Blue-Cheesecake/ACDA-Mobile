import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/config.dart';
import '../../logic/logic.dart';
import 'utils/utils.dart';

class DeSelectAllButtonWD extends ConsumerWidget {
  const DeSelectAllButtonWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late final bool isAllIdSelected;

    ref.watch(getRecordsStateProvider).whenOrNull(
      data: (records) {
        isAllIdSelected = ref.watch(
            historyInputStateProvider.select((value) => value.isSelectAllIds(originalDataLength: records.length)));
      },
    );

    return InkWell(
      onTap: () {
        if (isAllIdSelected) {
          ref.read(historyInputStateProvider.notifier).clearRequestDeleteIds();
          return;
        }
        ref.read(getRecordsStateProvider).whenOrNull(
          data: (records) {
            ref.read(historyInputStateProvider.notifier).addDeleteIdsFromEntityList(records);
          },
        );
      },
      child: Container(
        width: 101,
        height: 32,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: DesignSystem.g23),
          borderRadius: BorderRadius.circular(6),
          color: DesignSystem.g1,
        ),
        child: Center(
          child: Text(
            isAllIdSelected ? DeleteManagementMessages.deSelectAll : DeleteManagementMessages.selectAll,
            style: TextStyles.bodyText4Bold.copyWith(color: DesignSystem.g23),
          ),
        ),
      ),
    );
  }
}
