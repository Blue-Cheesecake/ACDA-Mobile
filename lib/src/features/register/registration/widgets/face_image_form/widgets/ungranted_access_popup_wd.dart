import 'package:flutter/cupertino.dart';

import '../../../../../../utils/utils.dart';

class UngrantedAccessPopupWD extends StatelessWidget {
  const UngrantedAccessPopupWD({required this.content, Key? key}) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return ACDAAlertPopup(
      title: ACDACommonMessages.alert,
      content: content,
      actions: [
        CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: () => Navigator.of(context).pop(),
          child: const Text(ACDACommonMessages.confirm),
        ),
      ],
    );
  }
}
