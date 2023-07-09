import 'dart:developer';

import 'utils/utils.dart';

class ACDALog {
  const ACDALog._();

  static void print({String? message}) {
    log('${ACDALogConstants.title}: $message');
  }
}
