import 'exceptions.dart';

final class ClientException implements AnyException {
  ClientException({this.messages});

  @override
  String? messages;
}
