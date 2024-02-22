import 'package:acda_mobile/src/keys/keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/config.dart';
import '../../../utils/utils.dart';
import '../logic/logic.dart';
import '../utils/utils.dart';

class LoginFormWD extends ConsumerStatefulWidget {
  const LoginFormWD({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginFormWD> createState() => _LoginFormWDState();
}

class _LoginFormWDState extends ConsumerState<LoginFormWD> {
  final _emailCtr = TextEditingController();
  final _passwordCtr = TextEditingController();

  @override
  void dispose() {
    _emailCtr.dispose();
    _passwordCtr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(width: 1, color: DesignSystem.g9),
    );
    bool isError = false;
    late String errorMessage;

    final response = ref.watch(authProvider);
    response.whenOrNull(
      clientError: (message) {
        isError = true;
        errorMessage = message;
      },
      error: (message) {
        isError = true;
        errorMessage = message ?? '';
      },
    );

    return Container(
      height: 280,
      width: double.infinity,
      decoration: BoxDecoration(color: DesignSystem.g1.withOpacity(0.9), borderRadius: BorderRadius.circular(31)),
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LoginFormMessages.title,
              style: TextStyles.header5.copyWith(
                color: DesignSystem.acdaPrimary,
              ),
            ),
            if (isError) const SizedBox(height: 5),
            if (isError)
              Text(
                errorMessage,
                style: TextStyles.bodyText6Bold.copyWith(color: DesignSystem.g9),
              ),
            const SizedBox(height: 10),
            ACDATextField(
              key: AuthenticationKeys.usernameFieldWD,
              controller: _emailCtr,
              hintText: LoginFormMessages.studentId,
              onChanged: (value) => ref.read(loginFormInputProvider.notifier).updateStudentId(value),
              onSubmitted: (value) => (value) => ref.read(loginFormInputProvider.notifier).updateStudentId(value),
              onTapOutside: (_) => FocusScope.of(context).requestFocus(FocusNode()),
              outlineInputBorder: isError ? errorBorder : null,
            ),
            const SizedBox(height: 13),
            ACDATextField(
              key: AuthenticationKeys.passwordFieldWD,
              controller: _passwordCtr,
              hintText: LoginFormMessages.password,
              obsecureText: true,
              onChanged: (value) => ref.read(loginFormInputProvider.notifier).updatePassword(value),
              onSubmitted: (value) => ref.read(loginFormInputProvider.notifier).updatePassword(value),
              onTapOutside: (_) => FocusScope.of(context).requestFocus(FocusNode()),
              outlineInputBorder: isError ? errorBorder : null,
            ),
            SizedBox(height: isError ? 9 : 29),
            const _LoginButton()
          ],
        ),
      ),
    );
  }
}

class _LoginButton extends ConsumerWidget {
  const _LoginButton();

  void _onPressed(WidgetRef ref) {
    ref.read(authProvider.notifier).authenticate();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(authProvider).isLoading;

    if (isLoading) {
      return const Center(
        child: ACDALoadingWD(),
      );
    }

    final isFormValid = ref.watch(loginFormInputProvider.select((value) => value.isButtonEnabled));

    return Center(
      child: ElevatedButton(
        key: AuthenticationKeys.loginButtonWD,
        style: ButtonStyles.loginButtonStyle(color: isFormValid ? DesignSystem.g8 : null),
        onPressed: isFormValid ? () => _onPressed(ref) : () {},
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              LoginFormMessages.loginAction,
              style: TextStyles.bodyText3Bold.copyWith(
                color: DesignSystem.g1,
              ),
            ),
            const SizedBox(width: 10),
            ACDAAssets.arrowRight,
          ],
        ),
      ),
    );
  }
}
