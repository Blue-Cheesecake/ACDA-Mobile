import 'exceptions.dart';

class UnacceptedWifiException implements AnyException {
  UnacceptedWifiException({this.messages});

  @override
  String? messages;
}
