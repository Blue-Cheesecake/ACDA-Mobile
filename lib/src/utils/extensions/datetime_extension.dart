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
}
