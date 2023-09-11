import 'package:flutter/material.dart';

import '../../../../../config/config.dart';
import '../utils/utils.dart';

class ActionMenusWD extends StatelessWidget {
  const ActionMenusWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ActionBarAssets.actionArrow,
        const VerticalDivider(
          color: DesignSystem.g4,
          thickness: 1,
        ),
        const SizedBox(width: 8),
        InkWell(
          onTap: () {},
          child: ActionBarAssets.adjustIcon,
        ),
        const SizedBox(width: 8),
        const VerticalDivider(
          color: DesignSystem.g4,
          thickness: 1,
        ),
        const SizedBox(width: 8),
        InkWell(onTap: () {}, child: ActionBarAssets.deleteIcon),
      ],
    );
  }
}
