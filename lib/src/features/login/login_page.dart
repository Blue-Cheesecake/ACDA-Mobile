import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ACDAUnacceptedWifiEventListenerWD(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: LoginFormAssets.background,
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const LoginTitleWD(),
                  const Column(
                    children: [
                      LoginFormWD(),
                      SizedBox(height: 41),
                      LoginAlternativeOptionWD(),
                    ],
                  ),
                  Container(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
