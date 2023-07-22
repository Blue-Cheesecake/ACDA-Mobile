import 'package:flutter/material.dart';

import '../../../../../../../config/config.dart';

class ResultIndicatorWD extends StatelessWidget {
  const ResultIndicatorWD({Key? key, required this.isPassed}) : super(key: key);

  final bool isPassed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isPassed ? DesignSystem.g8 : DesignSystem.g9,
      ),
    );
  }
}
