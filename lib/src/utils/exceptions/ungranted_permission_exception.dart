import '../utils.dart';

class UngrantedPermissionException implements AnyException {
  UngrantedPermissionException({this.messages});

  @override
  String? messages;
}
