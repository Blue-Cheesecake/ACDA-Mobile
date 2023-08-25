import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../utils/utils.dart';

class EvaluationTutorialOverlayWD extends StatelessWidget {
  const EvaluationTutorialOverlayWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        LayoutBuilder(
          builder: (context, constraints) => SizedBox(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              child: Container(color: DesignSystem.g1.withOpacity(0.0)),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: EvaluationFormAssets.tabLayoutOverlay(height: screenHeight * 0.86, width: screenWidth * 0.97),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            margin: EdgeInsets.only(top: screenHeight * 0.115, right: 28),
            child: Text(
              EvaluationFormMessages.progressBar,
              style: TextStyles.bodyText4Bold.copyWith(color: DesignSystem.g1),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            margin: EdgeInsets.only(top: screenHeight * 0.145, right: 12),
            child: EvaluationFormAssets.statusOverlay,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: EvaluationFormAssets.verticalLine,
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            margin: const EdgeInsets.only(left: 150),
            child: Text(
              textAlign: TextAlign.center,
              EvaluationFormMessages.verticalSwipable,
              style: TextStyles.header5.copyWith(color: DesignSystem.g1),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  EvaluationFormMessages.iffinished,
                  textAlign: TextAlign.center,
                  style: TextStyles.header5.copyWith(
                    color: DesignSystem.g1,
                  ),
                ),
                const SizedBox(height: 10),
                EvaluationFormAssets.submitButtonOverlay,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
