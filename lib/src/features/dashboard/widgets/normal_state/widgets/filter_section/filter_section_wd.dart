import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/utils.dart';
import '../../logic/logic.dart';
import '../../utils/utils.dart';
import 'widgets/widgets.dart';

class FilterSectionWD extends ConsumerWidget {
  const FilterSectionWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 17,
        childAspectRatio: 95 / 32,
      ),
      shrinkWrap: true,
      children: [
        FilterItemWD(
          title: DashboardMessages.searchAll,
          isSelected: ref.watch(filterInputProvider.select((value) => value.filterSection)) == FilterSectionEnum.all,
          onPressed: () {
            ref.read(filterInputProvider.notifier).updateFilterSection(FilterSectionEnum.all);
          },
        ),
        FilterItemWD(
          title: DashboardMessages.searchPassed,
          isSelected: ref.watch(filterInputProvider.select((value) => value.filterSection)) == FilterSectionEnum.passed,
          onPressed: () {
            ref.read(filterInputProvider.notifier).updateFilterSection(FilterSectionEnum.passed);
          },
        ),
        FilterItemWD(
          title: DashboardMessages.searchFailed,
          isSelected: ref.watch(filterInputProvider.select((value) => value.filterSection)) == FilterSectionEnum.failed,
          onPressed: () {
            ref.read(filterInputProvider.notifier).updateFilterSection(FilterSectionEnum.failed);
          },
        )
      ],
    );
  }
}
