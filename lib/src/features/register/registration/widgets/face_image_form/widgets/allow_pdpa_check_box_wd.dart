import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../config/config.dart';
import '../../../../register_form/register_form.dart';
import '../utils/utils.dart';

class AllowPDPACheckBoxWD extends StatelessWidget {
  const AllowPDPACheckBoxWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const _PDPACheckBox(),
        const SizedBox(width: 5),
        Text(
          FaceImageFormMessages.allowPDPA,
          style: TextStyles.bodyText4.copyWith(color: DesignSystem.g6),
        )
      ],
    );
  }
}

class _PDPACheckBox extends ConsumerWidget {
  const _PDPACheckBox();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 24,
      child: IconButton(
        padding: EdgeInsets.zero,
        splashRadius: 0.1,
        onPressed: () {
          ref
              .read(registerFormInputProvider.notifier)
              .updateIsAllowPDPA(!ref.watch(registerFormInputProvider.select((value) => value.isAllowPDPA)));
        },
        icon: Icon(
          color: ref.watch(registerFormInputProvider.select((value) => value.isAllowPDPA))
              ? DesignSystem.g8
              : DesignSystem.g14,
          Icons.check_circle_outline_outlined,
          size: 24,
        ),
      ),
    );
  }
}
