import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_wd.dart';
import 'flavors.dart';
import 'src/core/core.dart';
import 'firebase_options_dev.dart' as dev;
import 'firebase_options_stg.dart' as stg;
import 'firebase_options_prd.dart' as prd;

void mainRunApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppConfig.instance.init(F.appConfigEnv);

  if (AppConfig.instance.isPrd) {
    await Firebase.initializeApp(name: 'muict-sp-acda-prd', options: prd.DefaultFirebaseOptions.currentPlatform);
  }
  if (AppConfig.instance.isStg) {
    await Firebase.initializeApp(name: 'muic-sp-acda-stg', options: stg.DefaultFirebaseOptions.currentPlatform);
  }
  if (AppConfig.instance.isDev) {
    await Firebase.initializeApp(name: 'muic-sp-acda', options: dev.DefaultFirebaseOptions.currentPlatform);
  }

  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  runApp(const ProviderScope(child: AppWD()));
}
