import 'package:flutter/cupertino.dart';

class ACDAAlertPopup extends StatelessWidget {
  const ACDAAlertPopup({Key? key, required this.title, required this.content, required this.actions}) : super(key: key);

  final String title;
  final String content;
  final List<CupertinoDialogAction> actions;

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(content),
      actions: actions,
    );
  }
}
