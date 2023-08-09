import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class ACDAAnimatedTextKitWD extends StatelessWidget {
  const ACDAAnimatedTextKitWD({required this.animatedTexts, this.isPlayedOnce, Key? key}) : super(key: key);

  final bool? isPlayedOnce;
  final List<AnimatedText> animatedTexts;

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      isRepeatingAnimation: isPlayedOnce == null ? true : isPlayedOnce!,
      repeatForever: isPlayedOnce == null ? true : isPlayedOnce!,
      animatedTexts: animatedTexts,
    );
  }
}
