import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../utils/utils.dart';

class GoodLuckWd extends StatelessWidget {
  const GoodLuckWd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          DashboardMessages.goodLuck,
          style: TextStyles.bodyText4.copyWith(color: DesignSystem.g1),
        ),
        const SizedBox(height: 10),
        const _HomeDivider(),
      ],
    );
  }
}

class _HomeDivider extends StatelessWidget {
  const _HomeDivider();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 6,
            height: 6,
            decoration: const BoxDecoration(
              color: DesignSystem.g1,
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: Container(
              height: 1,
              color: DesignSystem.g1,
            ),
          ),
          Container(
            width: 6,
            height: 6,
            decoration: const BoxDecoration(
              color: DesignSystem.g1,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
