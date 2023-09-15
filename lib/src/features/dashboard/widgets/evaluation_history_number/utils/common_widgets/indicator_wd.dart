import 'package:flutter/material.dart';

import '../../../../../../config/config.dart';

class IndicatorWd extends StatelessWidget {
  const IndicatorWd({required this.title, required this.color, required this.value, Key? key}) : super(key: key);

  final String title;
  final Color color;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyles.bodyText4.copyWith(color: color),
        ),
        Text(
          value.toString(),
          style: TextStyles.header1Bold.copyWith(color: color),
        )
      ],
    );
  }
}
