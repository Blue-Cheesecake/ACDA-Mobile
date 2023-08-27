import 'package:flutter/cupertino.dart';

import '../../../../../../utils/utils.dart';
import '../utils/utils.dart';

class InvalidEmailOrStudentIdAlertPopupWD extends StatelessWidget {
  const InvalidEmailOrStudentIdAlertPopupWD({required this.content, Key? key}) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return ACDAAlertPopup(
      title: InfoFormMessages.popupTitle,
      content: content,
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