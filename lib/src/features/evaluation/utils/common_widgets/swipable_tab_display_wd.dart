import 'package:flutter/material.dart';

import '../utils.dart';

class SwipableTabDisplayWD extends StatelessWidget {
  const SwipableTabDisplayWD({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final c = <Widget>[];
    for (var i = 0; i < 4; i++) {
      c.add(Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: EvaluationFormAssets.polygon,
      ));
    }

    return Column(
      children: c,
    );
  }
}
