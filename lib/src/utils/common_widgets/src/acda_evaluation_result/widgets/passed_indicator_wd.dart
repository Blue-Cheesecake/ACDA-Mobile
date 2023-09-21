import 'package:flutter/material.dart';

import '../utils/utils.dart';

class PassedIndicatorWD extends StatelessWidget {
  const PassedIndicatorWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResultIndicatorWD(isPassed: true);
  }
}
