import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../../../../config/config.dart';
import '../../../../../../utils/utils.dart';
import '../utils/utils.dart';

class AnimatedInstructionBody extends StatelessWidget {
  const AnimatedInstructionBody({
    required Duration animatedAuration,
    super.key,
  }) : _animatedAuration = animatedAuration;

  final Duration _animatedAuration;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _AnimatedTextBody(
              alignment: Alignment.bottomLeft,
              sizedBoxHeight: 30,
              duration: _animatedAuration,
              text: CompletedFormMessages.please,
              textStyle: TextStyles.bodyText4.copyWith(color: DesignSystem.g6),
            ),
            _AnimatedTextBody(
              alignment: Alignment.bottomLeft,
              sizedBoxHeight: 30,
              duration: _animatedAuration,
              text: CompletedFormMessages.verifyYouAccount,
              textStyle: TextStyles.bodyText4Bold.copyWith(color: DesignSystem.g6),
            ),
            _AnimatedTextBody(
              alignment: Alignment.bottomLeft,
              sizedBoxHeight: 30,
              duration: _animatedAuration,
              text: CompletedFormMessages.instructionBody1,
              textStyle: TextStyles.bodyText4.copyWith(color: DesignSystem.g6),
            ),
          ],
        ),
        _AnimatedTextBody(
          alignment: Alignment.topLeft,
          sizedBoxHeight: 110,
          duration: _animatedAuration,
          text: CompletedFormMessages.instructionBody2,
          textStyle: TextStyles.bodyText4.copyWith(color: DesignSystem.g6),
        ),
      ],
    );
  }
}

class _AnimatedTextBody extends StatelessWidget {
  const _AnimatedTextBody({
    required this.duration,
    required this.text,
    required this.textStyle,
    required this.sizedBoxHeight,
    required this.alignment,
  });

  final Duration duration;
  final String text;
  final TextStyle textStyle;
  final double sizedBoxHeight;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizedBoxHeight,
      child: Align(
        alignment: alignment,
        child: ACDAAnimatedTextKitWD(
          isPlayedOnce: false,
          animatedTexts: [
            RotateAnimatedText(
              duration: duration,
              alignment: alignment,
              rotateOut: false,
              text,
              textStyle: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
