import 'package:flutter/material.dart';

import '../../../../../../../config/config.dart';

class FilterItemWD extends StatelessWidget {
  const FilterItemWD({Key? key, required this.title, required this.isSelected, required this.onPressed})
      : super(key: key);

  final String title;
  final bool isSelected;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? DesignSystem.acdaPrimary : DesignSystem.g2,
      ),
      child: Text(title),
    );
  }
}
