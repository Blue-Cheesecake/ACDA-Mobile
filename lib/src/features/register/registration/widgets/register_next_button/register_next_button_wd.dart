import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/config.dart';
import '../../../../../core/core.dart';
import '../../../../../utils/utils.dart';
import '../../../register_form/register_form.dart';
import '../../utils/utils.dart';
import 'utils/utils.dart';

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

  void _onPressed(WidgetRef ref) {
    final currentPage = ref.watch(registerFormInputProvider.select((value) => value.currentPage));

    if (currentPage == RegistrationPage.info && _isButtonEnabled(ref)) {
      ref.read(registerFormInputProvider.notifier).updateCurrentRegistrationPage(RegistrationPage.faceImage);
    }
    if (currentPage == RegistrationPage.faceImage && _isButtonEnabled(ref)) {
      ref.read(registerFormInputProvider.notifier).updateCurrentRegistrationPage(RegistrationPage.completion);
    }
    if (currentPage == RegistrationPage.completion) {
      ACDANavigation.instance.go(RoutePath.login);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      style: ButtonStyles.nextFormButtonStyle(color: _buttonColor(ref)),
      onPressed: () => _onPressed(ref),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            RegisterNextButtonMessages.next,
            style: TextStyles.bodyText3Bold.copyWith(color: DesignSystem.g1),
          ),
          const SizedBox(width: 6),
          ACDAAssets.arrowRight,
        ],
      ),
    );
  }
}
