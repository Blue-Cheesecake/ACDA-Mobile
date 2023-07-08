import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'image_validation_state.abs.freezed.dart';

@freezed
class ImageValidationState with _$ImageValidationState {
  const ImageValidationState._();

  factory ImageValidationState.initial() = _ImageValidationStateInitial;
  factory ImageValidationState.loading() = _ImageValidationStateLoading;
  factory ImageValidationState.data({required final ImageValidationResultEntity result}) = _ImageValidationStateData;
  factory ImageValidationState.error() = _ImageValidationStateError;

  bool get isLoading => this is _ImageValidationStateLoading;
  bool get isGotData => this is _ImageValidationStateData;
  bool get isError => this is _ImageValidationStateError;
}
