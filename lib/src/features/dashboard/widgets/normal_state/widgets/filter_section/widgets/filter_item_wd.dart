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
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: isSelected ? DesignSystem.acdaPrimary : DesignSystem.g2,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyles.bodyText3Bold.copyWith(
              color: isSelected ? DesignSystem.g1 : DesignSystem.g6,
            ),
          ),
        ),
      ),
    );
  }
}
