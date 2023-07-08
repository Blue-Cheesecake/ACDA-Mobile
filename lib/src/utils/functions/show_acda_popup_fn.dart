import 'package:flutter/cupertino.dart';

void showACDAPopupFN({required BuildContext context, required Widget popup}) {
  showCupertinoDialog(
    context: context,
    builder: (context) {
      return popup;
    },
    barrierDismissible: false,
  );
}
