import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/utils.dart';
import '../../logic/logic.dart';
import 'utils/utils.dart';

class DeletePopupWD extends ConsumerWidget {
  const DeletePopupWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ACDAAlertPopup(
      title: DeleteManagementMessages.deleteWarningTitle,
      content: DeleteManagementMessages.deleteWarningContents,
      actions: [
        CupertinoDialogAction(
          onPressed: () {
            Navigator.of(context).pop();
          },
          isDestructiveAction: false,
          child: const Text(ACDACommonMessages.close),
        ),
        CupertinoDialogAction(
          onPressed: () async {
            SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
              ref.read(deleteRecordsStateProvider.notifier).deleteSomeRecords();
            });
            Navigator.of(context).pop();
          },
          isDestructiveAction: true,
          child: const Text(ACDACommonMessages.delete),
        )
      ],
    );
  }
}
