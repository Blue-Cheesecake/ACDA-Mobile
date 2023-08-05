import 'package:flutter/material.dart';

import '../../../../../../config/config.dart';
import '../utils/utils.dart';

class StepDividerWD extends StatelessWidget {
  const StepDividerWD({Key? key, required this.status}) : super(key: key);

  final StepStatus status;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: status == StepStatus.completed ? DesignSystem.g8 : DesignSystem.g14,
        height: 3.5,
      ),
    );
  }
}
