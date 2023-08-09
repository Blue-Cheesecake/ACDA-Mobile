import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../config/config.dart';
import '../../../../register_form/register_form.dart';
import '../../../../utils/utils.dart';
import '../utils/utils.dart';

class AnimatedTransitionThankYouTextWD extends ConsumerStatefulWidget {
  const AnimatedTransitionThankYouTextWD({Key? key}) : super(key: key);

  @override
  ConsumerState<AnimatedTransitionThankYouTextWD> createState() => _AnimatedTransitionThankYouTextWDState();
}

class _AnimatedTransitionThankYouTextWDState extends ConsumerState<AnimatedTransitionThankYouTextWD>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<Offset> _animationOffset;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: RegisterAnimationConfigs.thankYouTextTranslationDuration,
    );

    _animationOffset = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(-1.0, 0),
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.linear),
    );

    Future.delayed(
      RegisterAnimationConfigs.thankYouTextDelayDuration,
      () {
        _animationController.forward();
      },
    );
  }

  @override
  void didUpdateWidget(covariant AnimatedTransitionThankYouTextWD oldWidget) {
    super.didUpdateWidget(oldWidget);
    _animationController.duration = RegisterAnimationConfigs.thankYouTextTranslationDuration;
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double scale = ref.watch(registerFormInputProvider.select((value) => value.completeButtonScale));

    double opacity = 0.0;
    if (scale == 1) {
      opacity = 1;
    }

    return AnimatedOpacity(
      opacity: opacity,
      duration: RegisterAnimationConfigs.thankYouTextDelayDuration,
      child: SlideTransition(
        position: _animationOffset,
        child: Text(
          RegisterNextButtonMessages.thankYouRegistration,
          textAlign: TextAlign.right,
          style: TextStyles.bodyText4.copyWith(color: DesignSystem.g5),
        ),
      ),
    );
  }
}
