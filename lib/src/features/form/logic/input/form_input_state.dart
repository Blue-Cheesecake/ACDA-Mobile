import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_input_state.freezed.dart';

@freezed
class FormInputState with _$FormInputState {
  factory FormInputState({
    String? label,
    Uint8List? bodyImageBytes,
    Uint8List? bottomImageBytes,
    Uint8List? shoesImageBytes,
  }) = _FormInputState;
}
