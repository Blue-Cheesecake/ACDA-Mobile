import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../../../../config/config.dart';
import '../../../../../../utils/utils.dart';
import '../utils/utils.dart';

class AnimatedInstructionTitle extends StatelessWidget {
  const AnimatedInstructionTitle({
    required Duration animatedAuration,
    super.key,
  }) : _animatedAuration = animatedAuration;

  final Duration _animatedAuration;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Align(
        alignment: Alignment.centerLeft,
        child: ACDAAnimatedTextKitWD(
          isPlayedOnce: false,
          animatedTexts: [
            RotateAnimatedText(
              duration: _animatedAuration,
              rotateOut: false,
              alignment: Alignment.centerLeft,
              CompletedFormMessages.instructionTitle,
              textStyle: TextStyles.bodyText1Bold.copyWith(color: DesignSystem.g6),
            ),
          ],
        ),
      ),
    );
  }
}
