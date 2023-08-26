import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../../../../../config/config.dart';
import '../../../../../core/core.dart';
import '../../../../../utils/utils.dart';
import '../../../register_form/register_form.dart';
import '../../utils/utils.dart';
import 'info_form.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class InfoFormWD extends ConsumerWidget {
  const InfoFormWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(emailExistenceProvider).whenOrNull(
      loading: () {
        context.loaderOverlay.show();
      },
      data: (isExist) {
        context.loaderOverlay.hide();
        if (isExist) {
          Future.delayed(Duration.zero, () {
            showACDAPopupFN(context: context, popup: const DuplicatedEmailAlertPopupWD());
          });
        }
      },
      error: () {
        context.loaderOverlay.hide();
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
                  const SizedBox(height: 14),
                  ElevatedButton(
                    onPressed: () {
                      ref
                          .read(registerFormInputProvider.notifier)
                          .updateCurrentRegistrationPage(RegistrationPage.completion);
                    },
                    child: const Text('go to completion page'),
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}
