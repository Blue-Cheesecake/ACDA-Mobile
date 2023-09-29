import 'dart:convert';
import 'dart:typed_data';

extension Uint8ListExtension on Uint8List? {
  Uint8List tryGetValue() {
    return this ?? Uint8List(0);
  }

  String? toBase64() {
    return this == null ? null : base64Encode(this!);
  }
}
