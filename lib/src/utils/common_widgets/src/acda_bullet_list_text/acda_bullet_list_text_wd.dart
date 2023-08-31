import 'package:flutter/material.dart';

import '../../../../config/config.dart';
import '../src.dart';

class ACDABulletListTextWD extends StatelessWidget {
  const ACDABulletListTextWD({
    required this.reqs,
    this.bulletStyle,
    Key? key,
  }) : super(key: key);

  final TextStyle? bulletStyle;
  final List<BulletListReqModel> reqs;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      children: [
        // Text(
        //   '\u2022',
        //   style: bulletStyle ?? TextStyles.bodyText4.copyWith(color: DesignSystem.g6),
        // ),
        // const SizedBox(width: 8),
        ...reqs
            .map(
              (e) => Text(
                e.content,
                style: e.style ??
                    TextStyles.bodyText6.copyWith(
                      color: DesignSystem.g6,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            )
            .toList()
      ],
    );
  }
}
