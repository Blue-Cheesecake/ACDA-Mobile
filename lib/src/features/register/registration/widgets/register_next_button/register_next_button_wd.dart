import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/config.dart';
import '../../../../../core/core.dart';
import '../../../../../utils/utils.dart';
import '../../../register_form/register_form.dart';
import '../../../utils/utils.dart';
import '../../registration.dart';
import '../info_form/logic/logic.dart';
import 'widgets/widgets.dart';

class RegisterNextButtonWD extends ConsumerWidget {
  const RegisterNextButtonWD({Key? key}) : super(key: key);

  bool _isButtonEnabled(WidgetRef ref) {
    final currentPage = ref.watch(registerFormInputProvider.select((value) => value.currentPage));
    if (currentPage == RegistrationPage.info) {
      return ref.watch(registerFormInputProvider.select((value) => value.isInformationNextButtonEnabled));
    }
    if (currentPage == RegistrationPage.faceImage) {
      return ref.watch(registerFormInputProvider.select((value) => value.isFaceImageNextButtonEnabled));
    }
    return true;
  }

  Color _buttonColor(WidgetRef ref) {
    if (_isButtonEnabled(ref)) {
      return DesignSystem.g8;
    }
    return DesignSystem.acdaPrimary;
  }

  void _onPressed(WidgetRef ref) async {
    final currentPage = ref.watch(registerFormInputProvider.select((value) => value.currentPage));

    if (currentPage == RegistrationPage.info && _isButtonEnabled(ref)) {
      await ref.read(registerValidityStateProvider.notifier).validate();
      ref.read(registerValidityStateProvider).whenOrNull(
        success: () {
          ref.read(registerFormInputProvider.notifier).updateCurrentRegistrationPage(RegistrationPage.faceImage);
        },
      );
    }
    if (currentPage == RegistrationPage.faceImage && _isButtonEnabled(ref)) {
      await ref.read(registrationStateProvider.notifier).register();
      ref.read(registrationStateProvider).whenOrNull(
        success: () {
          ref.read(registerFormInputProvider.notifier).updateCurrentRegistrationPage(RegistrationPage.completion);
        },
      );
    }
    if (currentPage == RegistrationPage.completion) {
      ACDANavigation.instance.go(RoutePath.login);
    }
  }

  Widget _ui(WidgetRef ref) {
    final currentPage = ref.watch(registerFormInputProvider.select((value) => value.currentPage));

    if (currentPage != RegistrationPage.completion) {
      return ElevatedButton(
        style: ButtonStyles.nextFormButtonStyle(color: _buttonColor(ref)),
        onPressed: () => _onPressed(ref),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ACDAAssets.arrowRight,
        ),
      );
    }

    final scale = ref.watch(registerFormInputProvider.select((value) => value.completeButtonScale));

    return Stack(
      alignment: Alignment.center,
      children: [
        const AnimatedTransitionThankYouTextWD(),
        AnimatedScale(
          scale: scale,
          duration: RegisterAnimationConfigs.completedNextButtonDuration,
          child: ElevatedButton(
            style: ButtonStyles.nextFormButtonStyle(color: DesignSystem.g8),
            onPressed: () => _onPressed(ref),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: ACDAAssets.arrowRight,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _ui(ref);
  }
}
