import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/config.dart';
import '../../../../utils/utils.dart';
import '../../logic/logic.dart';
import '../widgets.dart';

class DeleteRecordButtonWD extends ConsumerWidget {
  const DeleteRecordButtonWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDeleteIdRequestEmpty = ref.watch(historyInputStateProvider.select((value) => value.isDeleteIdRequestEmpty));

    return InkWell(
      onTap: () {
        if (!isDeleteIdRequestEmpty) {
          showACDAPopupFN(context: context, popup: const DeletePopupWD());
        }
      },
      child: Container(
        width: 101,
        height: 32,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: isDeleteIdRequestEmpty ? DesignSystem.disable : DesignSystem.g9),
          borderRadius: BorderRadius.circular(6),
          color: DesignSystem.g1,
        ),
        child: Center(
          child: Text(
            ACDACommonMessages.delete,
            style: TextStyles.bodyText4Bold.copyWith(
              color: isDeleteIdRequestEmpty ? DesignSystem.disable : DesignSystem.g9,
            ),
          ),
        ),
      ),
    );
  }
}
