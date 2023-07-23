import 'dart:convert';
import 'dart:typed_data';

extension StringExtension on String? {
  Uint8List? toBytes() {
    return this == null ? null : base64Decode(this!);
  }
}
