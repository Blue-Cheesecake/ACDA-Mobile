import 'exceptions.dart';

final class ServerException implements AnyException {
  ServerException({this.messages});

  @override
  String? messages;
}
