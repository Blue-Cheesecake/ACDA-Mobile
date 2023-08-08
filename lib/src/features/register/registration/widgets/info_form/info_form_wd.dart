import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../../../../../config/config.dart';
import '../../../../../utils/utils.dart';
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

    return Column(
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
        const SizedBox(height: 7),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            textAlign: TextAlign.right,
            InfoFormMessages.passwordInstruction,
            style: TextStyles.bodyText6.copyWith(color: DesignSystem.g8),
          ),
        ),
        const SizedBox(height: 7),
        const FacultyFormWD(),
      ],
    );
  }
}
