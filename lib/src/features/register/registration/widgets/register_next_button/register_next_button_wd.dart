import 'package:flutter/material.dart';

import '../../../../../config/config.dart';
import 'utils/utils.dart';

class RegisterNextButtonWD extends StatelessWidget {
  const RegisterNextButtonWD({Key? key, required this.onPressed}) : super(key: key);

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            RegisterNextButtonMessages.next,
            style: TextStyles.bodyText3Bold.copyWith(color: DesignSystem.g1),
          ),
          const Icon(Icons.arrow_right_alt_sharp, color: DesignSystem.g1, size: 16),
        ],
      ),
    );
  }
}
