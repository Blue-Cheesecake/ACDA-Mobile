import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/config.dart';
import '../../../core/core.dart';
import '../logic/logic.dart';
import '../utils/utils.dart';

class SubmitButtonWD extends ConsumerWidget {
  const SubmitButtonWD({Key? key}) : super(key: key);

  void _onPressed(WidgetRef ref) async {
    ACDANavigation.instance.push(RoutePath.result);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed:
          ref.watch(formInputProvider.select((value) => value.isSubmitButtonEnabled)) ? () => _onPressed(ref) : () {},
      style: ButtonStyles.submitButtonStyle(
        isEnabled: ref.watch(formInputProvider.select((value) => value.isSubmitButtonEnabled)),
      ),
      child: Text(
        FormMessages.submit,
        style: TextStyles.bodyText4Bold.copyWith(color: DesignSystem.g1),
      ),
    );
  }
}