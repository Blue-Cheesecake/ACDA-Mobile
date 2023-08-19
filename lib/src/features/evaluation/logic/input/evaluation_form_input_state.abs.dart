import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'evaluation_form_input_state.abs.freezed.dart';

@freezed
class EvaluationFormInputState with _$EvaluationFormInputState {
  factory EvaluationFormInputState({
    @Default(false) final bool isSubmitButtonEnabled,
    final XFile? fullBodyImageFile,
    final XFile? upperBodyImageFile,
    final XFile? studentIdCardImageFile,
  }) = _EvaluationFormInputState;
}
