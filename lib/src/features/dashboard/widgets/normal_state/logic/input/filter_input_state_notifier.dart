import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/utils.dart';
import 'input.dart';

class FilterInputStateNotifier extends StateNotifier<FilterInputState> {
  FilterInputStateNotifier() : super(FilterInputState());

  void updateSearchText(String? val) {
    state = state.copyWith(searchText: val);
  }

  void updateFilterSection(FilterSectionEnum val) {
    state = state.copyWith(filterSection: val);
  }
}
