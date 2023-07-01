import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_wd.dart';

import 'flavors.dart';
import 'src/core/core.dart';

void mainRunApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  AppConfig.instance.init(F.appConfigEnv);

  // Configuring Firebase
  if (AppConfig.instance.isStg || AppConfig.instance.isPrd) {
    FlutterError.onError = (errorDetails) {
      FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
    };
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
  }

  runApp(const ProviderScope(child: AppWD()));
}
