import 'package:flutter/cupertino.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../utils.dart';

class ACDAUngrantedAccessPopupWD extends StatelessWidget {
  const ACDAUngrantedAccessPopupWD(
      {required this.content, required this.requestCallbackfn, required this.updateImageCallbackfn, Key? key})
      : super(key: key);

  final String content;
  final Future<PermissionStatus> Function() requestCallbackfn;
  final void Function() updateImageCallbackfn;

  @override
  Widget build(BuildContext context) {
    return ACDAAlertPopup(
      title: ACDACommonMessages.alert,
      content: content,
      actions: [
        CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: () async {
            Navigator.of(context).pop();
            final PermissionStatus status = await requestCallbackfn();
            if (status == PermissionStatus.permanentlyDenied) {
              openAppSettings();
            }
            if (status == PermissionStatus.granted) {
              updateImageCallbackfn();
            }
          },
          child: const Text(ACDACommonMessages.request),
        ),
        CupertinoDialogAction(
          isDefaultAction: false,
          isDestructiveAction: true,
          onPressed: () => Navigator.of(context).pop(),
          child: const Text(ACDACommonMessages.close),
        ),
      ],
    );
  }
}
