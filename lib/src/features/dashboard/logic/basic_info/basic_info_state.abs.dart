import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'basic_info_state.abs.freezed.dart';

@freezed
class BasicInfoState with _$BasicInfoState {
  factory BasicInfoState.initial() = _BasicInfoStateInitial;
  factory BasicInfoState.data({required IBasicInfoEntity data}) = _BasicInfoData;
  factory BasicInfoState.error() = _BasicInfoError;
}
