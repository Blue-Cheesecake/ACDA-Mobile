import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../../../core/core.dart';
import '../utils/utils.dart';

class DoneButtonWD extends StatelessWidget {
  const DoneButtonWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // TODO:
        // save detection detection result and data into record

        ACDANavigation.instance.go(RoutePath.dashboard);
      },
      style: ButtonStyles.doneButtonStyle,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            ResultMessages.done,
            style: TextStyles.bodyText3Bold.copyWith(
              color: DesignSystem.g1,
            ),
          ),
          const SizedBox(width: 6),
          const Icon(
            Icons.arrow_back,
            textDirection: TextDirection.rtl,
          )
        ],
      ),
    );
  }
}
