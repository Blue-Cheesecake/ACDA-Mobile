import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/config.dart';
import '../../core/core.dart';
import 'register_form/register_form.dart';
import 'registration/registration.dart';
import 'registration/widgets/widgets.dart';
import 'utils/utils.dart';

class RegisterPage extends ConsumerWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPage = ref.watch(registerFormInputProvider.select((value) => value.currentPage));

    var borderRadius = 31.0;

    if (currentPage == RegistrationPage.completion) {
      borderRadius = 0;
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          key: ValueKey(borderRadius),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: Padding(
              padding: const EdgeInsets.only(left: 36, bottom: 14),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  RegisterMessages.signUp,
                  style: TextStyles.header4.copyWith(color: DesignSystem.g1),
                ),
              ),
            ),
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(borderRadius))),
          leading: Consumer(
            builder: (_, ref, __) => BackButton(
              onPressed: () {
                final currentPage = ref.watch(registerFormInputProvider.select((value) => value.currentPage));

                switch (currentPage) {
                  case RegistrationPage.info:
                    ACDANavigation.instance.pop();
                    break;
                  case RegistrationPage.faceImage:
                    ref.read(registerFormInputProvider.notifier).updateCurrentRegistrationPage(RegistrationPage.info);
                    break;
                  case RegistrationPage.completion:
                    ACDANavigation.instance.go(RoutePath.login);
                    break;
                }
              },
            ),
          ),
        ),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final currentPage = ref.watch(registerFormInputProvider.select((value) => value.currentPage));

          double height = 0.0;

          if (currentPage == RegistrationPage.completion) {
            height = 190;
          }

          return Stack(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                width: double.infinity,
                height: height,
                decoration: const BoxDecoration(
                  color: DesignSystem.acdaPrimary,
                ),
                curve: Curves.easeInOutQuad,
              ),
              child!,
            ],
          );
        },
        child: const RegistrationWD(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      floatingActionButton: const RegisterNextButtonWD(),
    );
  }
}
