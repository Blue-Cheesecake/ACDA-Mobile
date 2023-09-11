import 'package:flutter/widgets.dart';

class ActionBarAssets {
  const ActionBarAssets._();

  static Widget get actionArrow => Image.asset(
        'assets/icons/action_arrow_icon.png',
        width: 17,
        height: 17,
      );

  static Widget get adjustIcon => Image.asset(
        'assets/icons/adjust_icon.png',
        width: 35,
        height: 35,
      );

  static Widget get deleteIcon => Image.asset(
        'assets/icons/delete_icon.png',
        width: 35,
        height: 35,
      );
}
