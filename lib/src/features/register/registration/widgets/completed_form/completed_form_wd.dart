import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../../../../../config/config.dart';
import '../../../register_form/register_form.dart';
import '../../../utils/utils.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class CompletedFormWD extends ConsumerStatefulWidget {
  const CompletedFormWD({Key? key}) : super(key: key);

  @override
  ConsumerState<CompletedFormWD> createState() => _CompletedFormWDState();
}

class _CompletedFormWDState extends ConsumerState<CompletedFormWD> {
  Widget _registrationTitle = const SizedBox.shrink();
  Widget _spacing1 = const SizedBox.shrink();
  bool _isEmailVisible = false;
  Widget _spacing2 = const SizedBox.shrink();
  Widget _instruction = const SizedBox.shrink();

  @override
  void initState() {
    super.initState();

    Future.delayed(
      RegisterAnimationConfigs.completedFormDelayDuration,
      () {
        if (mounted) {
          setState(() {
            _registrationTitle =
                const AnimatedInstructionTitle(animatedAuration: RegisterAnimationConfigs.animatedDuration);
            _spacing1 = const SizedBox(height: 19);
            _spacing2 = const SizedBox(height: 14);
            _instruction = const AnimatedInstructionBody(animatedAuration: RegisterAnimationConfigs.animatedDuration);
            _isEmailVisible = true;
            ref.read(registerFormInputProvider.notifier).updateRegisterNextButtonScale(1);
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (context.mounted && context.loaderOverlay.visible) {
      context.loaderOverlay.hide();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 13),
        Center(
          child: Text(
            CompletedFormMessages.completedRegistrationTitle,
            style: TextStyles.header5.copyWith(color: DesignSystem.g1),
          ),
        ),
        const SizedBox(height: 30),
        _registrationTitle,
        _spacing1,
        Center(
          child: AnimatedOpacity(
            opacity: _isEmailVisible ? 1 : 0,
            duration: RegisterAnimationConfigs.animatedDuration,
            curve: Curves.linear,
            child: CompletedFormAssets.sentEmail,
          ),
        ),
        _spacing2,
        _instruction,
      ],
    );
  }
}
