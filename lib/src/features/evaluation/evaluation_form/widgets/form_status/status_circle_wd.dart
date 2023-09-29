import 'package:flutter/material.dart';

import '../../../../../config/config.dart';

class StatusCircleWD extends StatelessWidget {
  const StatusCircleWD({required this.isSelected, this.isLast = false, Key? key}) : super(key: key);

  final bool isSelected;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            color: isSelected ? DesignSystem.g8 : DesignSystem.acdaPrimary,
            shape: BoxShape.circle,
          ),
        ),
        if (!isLast)
          Container(
            height: 2,
            width: 19,
            decoration: BoxDecoration(
              color: isSelected ? DesignSystem.g8 : DesignSystem.acdaPrimary,
            ),
          )
      ],
    );
  }
}
