import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/utils.dart';

part 'filter_input_state.abs.freezed.dart';

@freezed
class FilterInputState with _$FilterInputState {
  factory FilterInputState({
    final String? searchText,
    @Default(FilterSectionEnum.all) final FilterSectionEnum filterSection,
  }) = _FilterInputState;
}
