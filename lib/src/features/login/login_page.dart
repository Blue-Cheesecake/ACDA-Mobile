import 'package:flutter/material.dart';

import '../../core/core.dart';
import '../../utils/utils.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ACDAUnacceptedWifiEventListenerWD(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: EdgeInsets.zero,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: LoginFormAssets.background,
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const LoginTitleWD(),
                    const Column(
                      children: [
                        LoginFormWD(),
                        SizedBox(height: 41),
                        LoginAlternativeOptionWD(),
                      ],
                    ),
                    if (!AppConfig.instance.isDev) Container(),

                    // For Dev Only
                    if (AppConfig.instance.isDev)
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              ACDAUser.instance.clearToken();
                            },
                            child: const Text('Clear Token'),
                          ),
                          const LoginAsDevButtonWD(),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
