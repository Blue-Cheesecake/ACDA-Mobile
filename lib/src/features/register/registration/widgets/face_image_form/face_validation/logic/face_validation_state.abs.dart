import 'package:freezed_annotation/freezed_annotation.dart';

part 'face_validation_state.abs.freezed.dart';

@freezed
class FaceValidationState with _$FaceValidationState {
  factory FaceValidationState.initial() = _FaceValidationStateInitial;
  factory FaceValidationState.loading() = _FaceValidationStateLoading;
  factory FaceValidationState.validated({required bool isPassed}) = _FaceValidationStateValidated;
  factory FaceValidationState.error({required String message}) = _FaceValidationStateError;
  factory FaceValidationState.unknownError() = _FaceValidationStateUnknownError;
}
