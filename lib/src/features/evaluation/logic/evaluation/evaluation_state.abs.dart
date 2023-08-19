import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utils/utils.dart';
import '../../domain/domain.dart';

part 'evaluation_state.abs.freezed.dart';

@freezed
class EvaluationState with _$EvaluationState {
  factory EvaluationState.initial() = _EvaluationStateInitial;
  factory EvaluationState.loading() = _EvaluationStateLoading;
  factory EvaluationState.data({required IEvaluationResultEntity result}) = _EvaluationStateData;
  factory EvaluationState.error({required AnyException exception}) = _EvaluationStateError;
}
