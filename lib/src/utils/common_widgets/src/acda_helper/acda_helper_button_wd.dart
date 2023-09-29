import 'package:flutter/material.dart';

import '../../../../config/config.dart';

class ACDAHelperButtonWd extends StatelessWidget {
  const ACDAHelperButtonWd({required this.onTap, Key? key}) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Icon(
        Icons.help_outline,
        size: 24,
        color: DesignSystem.g22,
      ),
    );
  }
}
