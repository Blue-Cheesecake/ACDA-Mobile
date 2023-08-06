import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../config/config.dart';
import '../../../../../../utils/utils.dart';
import '../../../../register_form/register_form.dart';
import '../utils/utils.dart';

class PasswordFormWD extends ConsumerStatefulWidget {
  const PasswordFormWD({Key? key}) : super(key: key);

  @override
  ConsumerState<PasswordFormWD> createState() => _PasswordFormWDState();
}

class _PasswordFormWDState extends ConsumerState<PasswordFormWD> {
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _passwordController.text = ref.watch(registerFormInputProvider.select((value) => value.password ?? ''));
    _confirmPasswordController.text =
        ref.watch(registerFormInputProvider.select((value) => value.confirmedPassword ?? ''));

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          InfoFormMessages.passwordTitle,
          style: TextStyles.bodyText2Bold.copyWith(color: DesignSystem.g6),
        ),
        const SizedBox(height: 5),
        ACDATextField(
          hintText: InfoFormMessages.passwordFormPlaceholder,
          controller: _passwordController,
          onTapOutside: (_) => FocusScope.of(context).requestFocus(FocusNode()),
          onChanged: (value) => ref.read(registerFormInputProvider.notifier).updatePassword(value),
          onSubmitted: (value) => ref.read(registerFormInputProvider.notifier).updatePassword(value),
          errorText: ref.watch(registerFormValidationProvider.select((value) => value.passwordErrorText)),
          obsecureText: true,
        ),
        const SizedBox(height: 7),
        ACDATextField(
          hintText: InfoFormMessages.confirmedpasswordFormPlaceholder,
          controller: _confirmPasswordController,
          onTapOutside: (_) => FocusScope.of(context).requestFocus(FocusNode()),
          onChanged: (value) => ref.read(registerFormInputProvider.notifier).updateConfirmedPassword(value),
          onSubmitted: (value) => ref.read(registerFormInputProvider.notifier).updateConfirmedPassword(value),
          errorText: ref.watch(registerFormValidationProvider.select((value) => value.confirmedPasswordErrorText)),
          obsecureText: true,
        ),
      ],
    );
  }
}
