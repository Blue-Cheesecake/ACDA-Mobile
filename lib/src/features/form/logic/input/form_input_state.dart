import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_input_state.freezed.dart';

@freezed
class FormInputState with _$FormInputState {
  // TODO: change to datatype of images later
  factory FormInputState({
    required String? label,
    required List<String> topImages,
    required List<String> bottomImages,
    required List<String> shoesImages,
  }) = _FormInputState;
}
