import 'package:flutter/material.dart';

import '../../../../config/config.dart';
import '../../utils/utils.dart';
import 'widgets/widgets.dart';

class EvaluationHistoryNumberWD extends StatelessWidget {
  const EvaluationHistoryNumberWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        DashboardAssets.dataValidationImg,
        const SizedBox(width: 8),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: DesignSystem.g30,
            boxShadow: const [
              BoxShadow(color: DesignSystem.g0, blurRadius: 20, spreadRadius: -10, offset: Offset(0, 3))
            ],
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              PassedIndicatorWD(),
              SizedBox(width: 43),
              FailedIndicatorWD(),
              SizedBox(width: 43),
              TotalIndicator(),
            ],
          ),
        )
      ],
    );
  }
}
