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
          onPressed: () {
            Navigator.of(context).pop();
          },
          isDefaultAction: true,
          child: const Text(ACDACommonMessages.acknowledge),
        ),
      ],
    );
  }
}
