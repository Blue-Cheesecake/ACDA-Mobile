import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/utils.dart';

part 'multi_step_state.abs.freezed.dart';

@freezed
class MultiStepState with _$MultiStepState {
  factory MultiStepState({
    @Default(StepStatus.selected) StepStatus info,
    @Default(StepStatus.empty) StepStatus faceImage,
    @Default(StepStatus.empty) StepStatus completion,
  }) = _MultiStepState;
}
