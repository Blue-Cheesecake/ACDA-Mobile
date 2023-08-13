abstract interface class AnyException implements Exception {
  AnyException({this.messages});

  String? messages;
}
