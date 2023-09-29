import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/config.dart';
import '../../../../../core/core.dart';
import '../../../logic/logic.dart';
import '../../../utils/utils.dart';

class LogoutButtonWd extends ConsumerWidget {
  const LogoutButtonWd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      onPressed: () {
        ACDANavigation.instance.go(RoutePath.login);
        ACDAUser.instance.clearToken();
        ref.read(basicInfoDataStateProvider.notifier).clearState();
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: const Size(50, 25),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        alignment: Alignment.centerLeft,
        splashFactory: NoSplash.splashFactory,
      ),
      child: Text(
        DashboardMessages.logout,
        style: TextStyles.bodyText4.copyWith(
          color: DesignSystem.g4,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
