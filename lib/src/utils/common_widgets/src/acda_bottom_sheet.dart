import 'package:flutter/material.dart';

class ACDABottomSheet extends StatelessWidget {
  const ACDABottomSheet({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: child);
  }
}
