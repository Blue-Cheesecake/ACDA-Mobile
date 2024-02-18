import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';

import '../../config/config.dart';

void showACDABottomSheet({required BuildContext context, required Widget child, bool expand = false}) async {
  await showCupertinoModalBottomSheet(
    context: context,
    builder: (context) {
      return child;
    },
    expand: expand,
    isDismissible: true,
    topRadius: const Radius.circular(31),
    barrierColor: DesignSystem.g0.withOpacity(0.2),
  );
}
