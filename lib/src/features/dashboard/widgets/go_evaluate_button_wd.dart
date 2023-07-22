import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../../../core/core.dart';

class GoEvaluateButtonWD extends StatelessWidget {
  const GoEvaluateButtonWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 65,
      child: FittedBox(
        child: FloatingActionButton(
          elevation: 0,
          onPressed: () {
            ACDANavigation.instance.push(RoutePath.form);
          },
          backgroundColor: DesignSystem.acdaPrimary,
          child: const Icon(
            Icons.add,
            size: 40,
          ),
        ),
      ),
    );
  }
}
