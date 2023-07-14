import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_input_state.freezed.dart';

@freezed
class FormInputState with _$FormInputState {
  const FormInputState._();

  factory FormInputState({
    String? label,
    Uint8List? bodyImageBytes,
    Uint8List? bottomImageBytes,
    Uint8List? shoesImageBytes,
    @Default(false) bool isSubmitButtonEnabled,
  }) = _FormInputState;

  bool get isThereAnyData =>
      (label != null && label!.isNotEmpty) ||
      bodyImageBytes != null ||
      bottomImageBytes != null ||
      shoesImageBytes != null;
}
