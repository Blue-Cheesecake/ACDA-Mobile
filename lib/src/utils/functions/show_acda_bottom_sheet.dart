import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';

void showACDABottomSheet({required BuildContext context, required Widget child}) async {
  await showCupertinoModalBottomSheet(
    context: context,
    builder: (context) {
      return child;
    },
    expand: false,
    isDismissible: true,
  );
}
