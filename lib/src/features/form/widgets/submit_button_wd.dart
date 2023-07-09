import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/config.dart';
import '../logic/logic.dart';
import '../utils/utils.dart';

class SubmitButtonWD extends ConsumerWidget {
  const SubmitButtonWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        // TODO: Navigate to Result page
      },
      style: ButtonStyles.submitButtonStlye(
        isEnabled: ref.watch(formInputProvider.select((value) => value.isSubmitButtonEnabled)),
      ),
      child: Text(
        FormMessages.submit,
        style: TextStyles.bodyText4Bold.copyWith(color: DesignSystem.g1),
      ),
    );
  }
}
