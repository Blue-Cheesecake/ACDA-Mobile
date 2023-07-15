import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../utils/utils.dart';

class PassedWD extends StatelessWidget {
  const PassedWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ResultAssets.passedAsset,
        const SizedBox(height: 25.17),
        Text(
          ResultMessages.passed,
          style: TextStyles.header1BoldItalic.copyWith(color: DesignSystem.g8),
        ),
      ],
    );
  }
}
