import 'package:flutter/cupertino.dart';

import '../../utils.dart';

class ACDAUseUnacceptedWifiPopupWD extends StatelessWidget {
  const ACDAUseUnacceptedWifiPopupWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ACDAAlertPopup(
      title: ACDACommonMessages.alert,
      content: ACDACommonMessages.usingUnacceptedWifiContent,
      actions: [
        CupertinoDialogAction(
          child: const Text(ACDACommonMessages.acknowledge),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
