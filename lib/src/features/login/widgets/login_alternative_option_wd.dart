import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../../../core/core.dart';
import '../utils/utils.dart';

class LoginAlternativeOptionWD extends StatelessWidget {
  const LoginAlternativeOptionWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              color: DesignSystem.g1,
              height: 1,
            ),
            const SizedBox(width: 7),
            Text(
              LoginFormMessages.or,
              style: TextStyles.bodyText3.copyWith(color: DesignSystem.g1),
            ),
            const SizedBox(width: 7),
            Container(
              width: 100,
              color: DesignSystem.g1,
              height: 1,
            ),
          ],
        ),
        const SizedBox(height: 41),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              LoginFormMessages.signupTitle,
              style: TextStyles.bodyText4.copyWith(
                color: DesignSystem.g1,
              ),
            ),
            const SizedBox(width: 10),
            TextButton(
              onPressed: () {
                ACDANavigation.instance.push(RoutePath.register);
              },
              child: Text(
                LoginFormMessages.signupAction,
                style: TextStyles.bodyText4Bold.copyWith(
                  color: DesignSystem.g8,
                  decoration: TextDecoration.underline,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
