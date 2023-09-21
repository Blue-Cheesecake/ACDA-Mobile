import 'package:flutter/material.dart';

import '../../../config/config.dart';

class ACDAGradientBackgroundWD extends StatelessWidget {
  const ACDAGradientBackgroundWD({this.child, this.width, Key? key}) : super(key: key);

  final double? width;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      width: width,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            DesignSystem.acdaPrimary,
            DesignSystem.g23,
            DesignSystem.g21,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: <double>[
            0.4,
            0.7,
            1.0,
          ],
        ),
      ),
      child: child,
    );
  }
}
