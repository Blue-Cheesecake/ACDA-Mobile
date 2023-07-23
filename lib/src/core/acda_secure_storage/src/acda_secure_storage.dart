import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../core.dart';

class ACDASecureStorage {
  ACDASecureStorage._();

  static final _instance = ACDASecureStorage._();
  static ACDASecureStorage get instance => _instance;

  final _storage = const FlutterSecureStorage();
}

extension ACDASecureStorageAction on ACDASecureStorage {
  Future<void> read({required String key}) {
    ACDALog.printDebug(message: '[🎁 Local Storage]: Reading value with key - $key');
    return _storage.read(key: key);
  }

  Future<void> write({required String key, required String value}) {
    ACDALog.printDebug(message: '[🎁 Local Storage]: Writing value - $value with key - $key');
    return _storage.write(key: key, value: value);
  }

  Future<void> delete({required String key}) {
    ACDALog.printDebug(message: '[🎁 Local Storage]: Deleting value with key - $key');
    return _storage.delete(key: key);
  }
}
