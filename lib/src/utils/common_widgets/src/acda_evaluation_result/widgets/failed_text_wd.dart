import 'package:flutter/material.dart';

import '../../../../../config/config.dart';
import '../utils/utils.dart';

class FailedTextWD extends StatelessWidget {
  const FailedTextWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResultHeaderWD(
      title: ACDAEvaluationResultMessages.failedHeader,
      color: DesignSystem.g9,
    );
  }
}
