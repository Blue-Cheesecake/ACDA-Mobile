import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_input_state.abs.freezed.dart';

@freezed
class FilterInputState with _$FilterInputState {
  factory FilterInputState({
    final String? searchText,
  }) = _FilterInputState;
}
