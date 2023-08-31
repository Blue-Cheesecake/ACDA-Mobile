import 'package:flutter/material.dart';

import '../../../config/config.dart';

class ACDABulletListTextWD extends StatelessWidget {
  const ACDABulletListTextWD({required this.content, Key? key}) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '\u2022',
          style: TextStyles.bodyText4.copyWith(color: DesignSystem.g6),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            content,
            style: TextStyles.bodyText6.copyWith(
              color: DesignSystem.g6,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
