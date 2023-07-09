import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../utils/utils.dart';

class SubmitButtonWD extends StatelessWidget {
  const SubmitButtonWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyles.submitButtonStlye(isEnabled: true),
      child: Text(
        FormMessages.submit,
        style: TextStyles.bodyText4Bold.copyWith(color: DesignSystem.g1),
      ),
    );
  }
}
