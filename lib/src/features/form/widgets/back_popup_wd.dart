import 'package:flutter/cupertino.dart';

import '../../../core/core.dart';
import '../../../utils/utils.dart';
import '../utils/utils.dart';

class BackPopupWD extends StatelessWidget {
  const BackPopupWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ACDAAlertPopup(
      title: FormMessages.backConfirmationPopupTitle,
      content: FormMessages.backConfirmationPopupBody,
      actions: [
        CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: () => ACDANavigation.instance.pop(),
          child: const Text(FormMessages.goBack),
        ),
        CupertinoDialogAction(
          isDestructiveAction: true,
          onPressed: () => ACDANavigation.instance.go(RoutePath.dashboard),
          child: const Text(FormMessages.exit),
        ),
      ],
    );
  }
}
