import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'image_validation_state.abs.freezed.dart';

@freezed
class ImageValidationState with _$ImageValidationState {
  const ImageValidationState._();

  factory ImageValidationState.initial() = _ImageValidationStateInitial;
  factory ImageValidationState.data({required final ImageValidationResultEntity result}) = _ImageValidationStateData;
  factory ImageValidationState.error() = _ImageValidationStateError;
}
