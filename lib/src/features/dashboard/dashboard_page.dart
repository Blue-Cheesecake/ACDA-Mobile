import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config/config.dart';
import '../../core/core.dart';
import '../../utils/utils.dart';
import 'utils/utils.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ACDAUnacceptedWifiEventListenerWD(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            DashboardMessages.title,
            style: TextStyles.header5.copyWith(color: DesignSystem.g1),
          ),
          leading: IconButton(
              onPressed: () {
                ACDAUser.instance.clearToken();
                ACDANavigation.instance.go(RoutePath.login);
              },
              icon: const Icon(CupertinoIcons.back)),
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              ACDANavigation.instance.push(RoutePath.form);
            },
            child: const Text('Evaluation Form'),
          ),
        ),
      ),
    );
  }
}
