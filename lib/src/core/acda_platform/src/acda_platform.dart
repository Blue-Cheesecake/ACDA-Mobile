import 'package:flutter/foundation.dart';

class ACDAPlatform {
  ACDAPlatform._();

  static final _instance = ACDAPlatform._();
  static ACDAPlatform get instance => _instance;

  bool get isAndroid => defaultTargetPlatform == TargetPlatform.android;
  bool get isIOS => defaultTargetPlatform == TargetPlatform.iOS;
}
