import 'package:flutter/material.dart';

import '../../../config/config.dart';

class ACDACameraOptionWD extends StatelessWidget {
  const ACDACameraOptionWD({required this.title, required this.onPressed, required this.color, Key? key})
      : super(key: key);

  final String title;
  final void Function() onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        title: Center(
            child: Text(
          title,
          style: TextStyles.bodyText2.copyWith(color: color),
        )),
        onTap: () {
          Navigator.of(context).pop();
          onPressed();
        },
      ),
    );
  }
}
