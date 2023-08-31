import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../../../../../config/config.dart';
import '../../../../../core/core.dart';
import '../../../../../utils/utils.dart';
import '../../../register_form/register_form.dart';
import '../../utils/utils.dart';
import 'logic/logic.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class InfoFormWD extends ConsumerWidget {
  const InfoFormWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(registerValidityStateProvider).whenOrNull(
      loading: () {
        context.loaderOverlay.show();
      },
      success: () {
        context.loaderOverlay.hide();
      },
      error: (String message) {
        context.loaderOverlay.hide();

        Future.delayed(Duration.zero, () {
          showACDAPopupFN(context: context, popup: InvalidEmailOrStudentIdAlertPopupWD(content: message));
        });
      },
    );

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            InfoFormMessages.instruction,
            style: TextStyles.bodyText4.copyWith(color: DesignSystem.g6),
          ),
          const SizedBox(height: 14),
          const UserEmailFormWD(),
          const SizedBox(height: 14),
          const PasswordFormWD(),
          const SizedBox(height: 14),
          const StudentIdFormWD(),
          const SizedBox(height: 7),
          const FacultyFormWD(),
          if (AppConfig.instance.isDev) const SizedBox(height: 7),
          if (AppConfig.instance.isDev)
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Debugging Purpose'),
                  const SizedBox(height: 7),
                  ElevatedButton(
                    onPressed: () {
                      ref
                          .read(registerFormInputProvider.notifier)
                          .updateCurrentRegistrationPage(RegistrationPage.completion);
                    },
                    child: const Text('Go to completion page'),
                  ),
                  const SizedBox(height: 7),
                  ElevatedButton(
                      onPressed: () {
                        ref
                            .read(registerFormInputProvider.notifier)
                            .updateCurrentRegistrationPage(RegistrationPage.faceImage);
                      },
                      child: const Text('Go to next page'))
                ],
              ),
            )
        ],
      ),
    );
  }
}
