import 'dart:developer';

import 'utils/utils.dart';

class ACDALog {
  const ACDALog._();

  static print({String? message}) {
    log('${ACDALogConstants.title}: $message');
  }
}
