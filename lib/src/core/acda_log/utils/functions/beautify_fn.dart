import 'dart:convert';

String beautifyHeader(Map<String, dynamic> s) {
  JsonEncoder encoder = const JsonEncoder.withIndent('  ');
  return encoder.convert(s);
}
