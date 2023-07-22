import 'package:flutter/material.dart';

import '../../../../utils/utils.dart';
import 'widgets/widgets.dart';

class FilterSectionWD extends StatelessWidget {
  const FilterSectionWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FilterItemWD(
          title: DashboardMessages.searchAll,
          isSelected: true,
          onPressed: () {},
        ),
        FilterItemWD(
          title: DashboardMessages.searchPassed,
          isSelected: false,
          onPressed: () {},
        ),
        FilterItemWD(
          title: DashboardMessages.searchFailed,
          isSelected: false,
          onPressed: () {},
        ),
      ],
    );
  }
}
