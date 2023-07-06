import 'exceptions.dart';

final class ServerException implements AnyException {
  ServerException({this.messages, this.code});

  final String? messages;
  final int? code;
}
