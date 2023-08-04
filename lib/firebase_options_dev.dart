// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options_dev.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macOS - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: String.fromEnvironment('webAPIKey'),
    appId: '1:206768417383:web:cf6ee2e1e61e41fb7b82c2',
    messagingSenderId: '206768417383',
    projectId: 'muict-sp-acda',
    authDomain: 'muict-sp-acda.firebaseapp.com',
    storageBucket: 'muict-sp-acda.appspot.com',
    measurementId: 'G-J4Y2P1DR6F',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: String.fromEnvironment('androidAPIKey'),
    appId: '1:206768417383:android:5cef8739b0f6501e7b82c2',
    messagingSenderId: '206768417383',
    projectId: 'muict-sp-acda',
    storageBucket: 'muict-sp-acda.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: String.fromEnvironment('iosAPIKey'),
    appId: '1:206768417383:ios:63792114c24af4bc7b82c2',
    messagingSenderId: '206768417383',
    projectId: 'muict-sp-acda',
    storageBucket: 'muict-sp-acda.appspot.com',
    iosClientId: '206768417383-flpt03ccotqg0fvissraidai16inih9m.apps.googleusercontent.com',
    iosBundleId: 'com.acda.dev',
  );
}
