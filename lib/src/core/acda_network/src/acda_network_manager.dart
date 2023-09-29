import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class IACDANetworkManager {
  Future<bool> get isConnected;
}

class ACDANetworkManager implements IACDANetworkManager {
  ACDANetworkManager();

  static final _internetConnectionChecker = InternetConnectionChecker();

  @override
  Future<bool> get isConnected => _internetConnectionChecker.hasConnection;
}
