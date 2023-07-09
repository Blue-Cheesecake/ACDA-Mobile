import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_validation_state.abs.freezed.dart';

@freezed
class FormValidationState with _$FormValidationState {
  factory FormValidationState({
    String? labelErrorText,
  }) = _FormValidationState;
}
