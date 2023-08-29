import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime? {
  DateTime? get buddistDate {
    if (this == null) {
      return null;
    }

    return DateTime(
      this!.year + 543,
      this!.month,
      this!.day,
      this!.hour,
      this!.minute,
      this!.second,
      this!.millisecond,
      this!.microsecond,
    );
  }

  String get homepageDate {
    if (this == null) {
      return '';
    }
    return DateFormat('E. d/M/y').format(this!);
  }
}
