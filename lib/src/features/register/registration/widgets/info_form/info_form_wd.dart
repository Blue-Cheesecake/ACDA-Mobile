import 'package:flutter/material.dart';

import '../../../../../config/config.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class InfoFormWD extends StatelessWidget {
  const InfoFormWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
