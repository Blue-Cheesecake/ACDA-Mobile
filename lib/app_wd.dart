import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';

import 'src/config/config.dart';
import 'src/core/core.dart';

class AppWD extends StatelessWidget {
  const AppWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      useDefaultLoading: true,
      child: MaterialApp.router(
        routerConfig: ACDANavigation.instance.router,
        theme: getACDATheme(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
