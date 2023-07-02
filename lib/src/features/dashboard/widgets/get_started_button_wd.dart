import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../../../core/acda_navigation/src/utils/utils.dart';
import '../../../core/core.dart';
import '../utils/utils.dart';

class GetStartedButtonWD extends StatelessWidget {
  const GetStartedButtonWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ACDANavigation.instance.push(RoutePath.form);
      },
      style: ButtonStyles.getStartedStyle,
      child: Text(
        DashboardMessages.getStarted,
        style: TextStyles.bodyText4Bold.copyWith(color: DesignSystem.g1),
      ),
    );
  }
}
