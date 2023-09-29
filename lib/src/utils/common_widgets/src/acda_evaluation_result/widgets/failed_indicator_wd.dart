import 'package:flutter/material.dart';

import '../utils/utils.dart';

class FailedIndicatorWD extends StatelessWidget {
  const FailedIndicatorWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResultIndicatorWD(isPassed: false);
  }
}
