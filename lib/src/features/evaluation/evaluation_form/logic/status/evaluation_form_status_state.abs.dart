import 'package:freezed_annotation/freezed_annotation.dart';

part 'evaluation_form_status_state.abs.freezed.dart';

@freezed
class EvaluationFormStatusState with _$EvaluationFormStatusState {
  factory EvaluationFormStatusState({
    @Default(false) final bool isFullBodyImageFilled,
    @Default(false) final bool isUpperBodyImageFilled,
    @Default(false) final bool isStudentIdCardImageFilled,
  }) = _EvaluationFormStatusState;
}
