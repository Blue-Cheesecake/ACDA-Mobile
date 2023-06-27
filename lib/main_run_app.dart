import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_wd.dart';
import 'flavor.dart';
import 'src/core/core.dart';

void mainRunApp() {
  // configure project based on Flavor Here
  //
  //
  // use WidgetsFlutterBinding.ensureInitialized(); if we use Firebase

  AppConfig.instance.init(AppFlavor.appConfigFlavor);

  runApp(const ProviderScope(child: AppWD()));
}
