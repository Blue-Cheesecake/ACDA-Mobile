import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/utils.dart';

part 'detection_result_state.abs.freezed.dart';

@freezed
class DetectionResultState with _$DetectionResultState {
  const DetectionResultState._();

  factory DetectionResultState.initial() = _DetectionResultStateInitial;
  factory DetectionResultState.data({required ICommonDetectionResultEntity data}) = _DetectionResultStateData;
  factory DetectionResultState.error() = _DetectionResultStateError;
}
