import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_info_data_state.freezed.dart';

@freezed
class BasicInfoDataState with _$BasicInfoDataState {
  factory BasicInfoDataState({
    @Default('----') final String name,
    @Default('----') final String faculty,
    @Default(0) final int numPassed,
    @Default(0) final int numFailed,
    @Default(0) final int total,
  }) = _BasicInfoDataState;
}
