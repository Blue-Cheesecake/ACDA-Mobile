import 'package:freezed_annotation/freezed_annotation.dart';

part 'action_bar_state.abs.freezed.dart';

@freezed
class ActionBarState with _$ActionBarState {
  factory ActionBarState({
    @Default(false) final bool isOpening,
    @Default(31) final double actionBarWidth,
  }) = _ActionBarState;
}
