import 'package:flutter/material.dart';

import '../../../../../utils/utils.dart';
import '../../../../../config/config.dart';
import '../../../utils/utils.dart';

class EmotionDateWD extends StatelessWidget {
  const EmotionDateWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
          color: DesignSystem.acdaPrimary.withOpacity(0.8),
          borderRadius: const BorderRadius.horizontal(left: Radius.circular(12)),
          boxShadow: [
            BoxShadow(
              color: DesignSystem.g0.withOpacity(0.7),
              blurRadius: 10,
              offset: const Offset(0, 4),
            )
          ]),
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DashboardAssets.happyIcon,
            Text(
              DateTime.now().homepageDate,
              style: TextStyles.bodyText3.copyWith(color: DesignSystem.g1),
            ),
          ],
        ),
      ),
    );
  }
}
