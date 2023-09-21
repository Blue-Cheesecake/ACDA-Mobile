import 'package:flutter/material.dart';

import '../../../../../config/config.dart';
import '../utils/utils.dart';

class PassedTextWD extends StatelessWidget {
  const PassedTextWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResultHeaderWD(
      title: ACDAEvaluationResultMessages.passedHeader,
      color: DesignSystem.g8,
    );
  }
}
