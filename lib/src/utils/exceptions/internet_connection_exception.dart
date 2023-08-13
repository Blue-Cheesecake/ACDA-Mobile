import 'exceptions.dart';

final class InternetConnectionException implements AnyException {
  InternetConnectionException({this.messages});

  @override
  String? messages;
}
