import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_mode_state.abs.freezed.dart';

@freezed
class HistoryModeState with _$HistoryModeState {
  factory HistoryModeState({
    @Default(false) final bool isDeletingMode,
  }) = _HistoryModeState;
}
