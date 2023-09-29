import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../config/config.dart';

class ACDALoadingWD extends StatelessWidget {
  const ACDALoadingWD({Key? key, this.color}) : super(key: key);

  final Color? color;

  static Widget withScaffold() {
    return Scaffold(
      backgroundColor: DesignSystem.g0.withOpacity(0.4),
      body: const Center(
        child: ACDALoadingWD(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.hexagonDots(
      color: color ?? DesignSystem.acdaPrimary,
      size: 20,
    );
  }
}
