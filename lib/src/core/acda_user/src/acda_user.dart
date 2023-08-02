import '../../core.dart';

class ACDAUser {
  ACDAUser._();

  static final ACDAUser _instance = ACDAUser._();
  static ACDAUser get instance => _instance;
  Future<String?> get token async {
    String? token = await ACDASecureStorage.instance.read(key: 'token');
    return token;
  }

  Future<void> writeToken(String value) async {
    ACDASecureStorage.instance.write(key: 'token', value: value);
  }
}
