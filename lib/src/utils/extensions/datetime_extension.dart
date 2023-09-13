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

  String get thaiStandardDateString {
    if (this == null) {
      return '';
    }
    return DateFormat('dd/MM/yyyy').format(this!);
  }

  String get homepageDate {
    if (this == null) {
      return '';
    }
    return DateFormat('E. d/M/y').format(this!);
  }

  String? get getDateCommaString {
    if (this == null) {
      return null;
    }
    return DateFormat('h.mm a,').format(this!);
  }

  String? get mediumDateString {
    if (this == null) {
      return null;
    }

    return DateFormat('EEE dd/MM/yyyy').format(this!).toUpperCase();
  }
}
