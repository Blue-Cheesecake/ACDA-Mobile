import 'package:flutter/material.dart';

import '../../../../utils/utils.dart';
import 'widgets/widgets.dart';

class FilterSectionWD extends StatelessWidget {
  FilterSectionWD({Key? key}) : super(key: key);

  final _filterList = [
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
    )
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 17,
        childAspectRatio: 95 / 32,
      ),
      shrinkWrap: true,
      itemCount: _filterList.length,
      itemBuilder: (_, index) {
        return _filterList[index];
      },
    );
  }
}
