import 'package:network_info_plus/network_info_plus.dart';

abstract interface class IACDANetworkInfo {
  Future<String?> getRouterIP();
}

class ACDANetworkInfo implements IACDANetworkInfo {
  ACDANetworkInfo._();

  static final ACDANetworkInfo _instance = ACDANetworkInfo._();
  static ACDANetworkInfo get instance => _instance;
  final _info = NetworkInfo();

  @override
  Future<String?> getRouterIP() {
    return _info.getWifiGatewayIP();
  }
}
