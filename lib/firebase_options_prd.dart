// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options_prd.dart';
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
        return macos;
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
    apiKey: 'AIzaSyCw8t9XqR3NfMeBzmnOsK9xb5x6_HBUxI4',
    appId: '1:187513662740:web:8a5c1e62ea14f13dfbe601',
    messagingSenderId: '187513662740',
    projectId: 'muict-sp-acda-prd',
    authDomain: 'muict-sp-acda-prd.firebaseapp.com',
    storageBucket: 'muict-sp-acda-prd.appspot.com',
    measurementId: 'G-XXMTX8CKBT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCPgAUOFu57svATLwcKPTkARquJJ9s-wxQ',
    appId: '1:187513662740:android:c200e9461a43e77cfbe601',
    messagingSenderId: '187513662740',
    projectId: 'muict-sp-acda-prd',
    storageBucket: 'muict-sp-acda-prd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBhs_P1WEWEKKItk3v-pXAwWKwGwkAk7OY',
    appId: '1:187513662740:ios:5b28bf434f9edd02fbe601',
    messagingSenderId: '187513662740',
    projectId: 'muict-sp-acda-prd',
    storageBucket: 'muict-sp-acda-prd.appspot.com',
    iosClientId: '187513662740-oi68j8aib52532a6in1rtalngpibcbh0.apps.googleusercontent.com',
    iosBundleId: 'com.acda',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBhs_P1WEWEKKItk3v-pXAwWKwGwkAk7OY',
    appId: '1:187513662740:ios:5b28bf434f9edd02fbe601',
    messagingSenderId: '187513662740',
    projectId: 'muict-sp-acda-prd',
    storageBucket: 'muict-sp-acda-prd.appspot.com',
    iosClientId: '187513662740-oi68j8aib52532a6in1rtalngpibcbh0.apps.googleusercontent.com',
    iosBundleId: 'com.acda',
  );
}