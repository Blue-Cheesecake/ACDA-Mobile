import 'package:acda_mobile/src/utils/utils.dart';

final class InternetConnectionException implements AnyException {
  InternetConnectionException({this.messages});

  final String? messages;
}
