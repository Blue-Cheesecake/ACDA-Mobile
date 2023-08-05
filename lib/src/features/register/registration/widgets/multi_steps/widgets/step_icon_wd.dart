import 'package:flutter/material.dart';

import '../../../../../../config/config.dart';
import '../utils/utils.dart';

class StepIconWD extends StatelessWidget {
  const StepIconWD({Key? key, required this.icon, required this.status}) : super(key: key);

  final Widget icon;
  final StepStatus status;

  @override
  Widget build(BuildContext context) {
    Color boxColor = DesignSystem.g14;

    if (status == StepStatus.selected) {
      boxColor = DesignSystem.acdaPrimary;
    }
    if (status == StepStatus.completed) {
      boxColor = DesignSystem.g8;
    }

    return Container(
      height: 37,
      width: 37,
      decoration: BoxDecoration(
        color: boxColor,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: icon,
      ),
    );
  }
}
