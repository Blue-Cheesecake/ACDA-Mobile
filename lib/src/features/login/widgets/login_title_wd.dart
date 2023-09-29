import 'package:flutter/material.dart';

import '../utils/utils.dart';

class LoginTitleWD extends StatelessWidget {
  const LoginTitleWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoginFormAssets.appLogo,
        const SizedBox(height: 15),
        LoginFormAssets.appName,
      ],
    );
  }
}
