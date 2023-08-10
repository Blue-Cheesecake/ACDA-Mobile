import 'package:flutter/cupertino.dart';

import '../../../../../../utils/utils.dart';
import '../utils/utils.dart';

class DuplicatedEmailAlertPopupWD extends StatelessWidget {
  const DuplicatedEmailAlertPopupWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ACDAAlertPopup(
      title: InfoFormMessages.popupTitle,
      content: InfoFormMessages.content,
      actions: [
        CupertinoDialogAction(
          isDestructiveAction: true,
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(InfoFormMessages.confirm),
        ),
      ],
    );
  }
}
