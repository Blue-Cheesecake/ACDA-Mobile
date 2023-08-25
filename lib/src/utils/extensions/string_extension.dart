import 'dart:convert';
import 'dart:typed_data';

extension StringExtension on String? {
  Uint8List? toBytes() {
    return this == null ? null : base64Decode(this!);
  }

  bool get isNumeric {
    if (this == null) {
      return false;
    }
    return double.tryParse(this!) != null;
  }
}
