import 'package:flutter/material.dart';

import '../../../../../../config/config.dart';
import '../utils.dart';

class ResultIndicatorWD extends StatelessWidget {
  const ResultIndicatorWD({required this.isPassed, Key? key}) : super(key: key);

  final bool isPassed;

  @override
  Widget build(BuildContext context) {
    Widget indicatorImage = ACDAEvaluationResultAssets.passedIndicator;
    Color shadowColor = DesignSystem.g8;

    if (!isPassed) {
      indicatorImage = ACDAEvaluationResultAssets.failedIndicator;
      shadowColor = DesignSystem.g9;
    }

    return Container(
      width: 43,
      height: 43,
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
            0.2,
            0.7,
          ],
          colors: [
            DesignSystem.g43,
            DesignSystem.g1,
          ],
        ),
      ),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.25),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(0, 5),
          )
        ]),
        child: indicatorImage,
      ),
    );
  }
}
