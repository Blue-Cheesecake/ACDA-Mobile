import 'package:flutter/material.dart';

import '../../../../../../config/config.dart';

class ResultHeaderWD extends StatelessWidget {
  const ResultHeaderWD({required this.title, required this.color, Key? key}) : super(key: key);

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyles.header1Bold.copyWith(
        fontSize: 48,
        color: color,
      ),
    );
  }
}
