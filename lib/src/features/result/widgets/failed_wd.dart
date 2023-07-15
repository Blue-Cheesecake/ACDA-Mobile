import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../utils/utils.dart';

class FailedWD extends StatelessWidget {
  const FailedWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ResultAssets.failedAsset,
        const SizedBox(height: 25.17),
        Text(
          ResultMessages.failed,
          style: TextStyles.header1BoldItalic.copyWith(color: DesignSystem.g9),
        ),
      ],
    );
  }
}
