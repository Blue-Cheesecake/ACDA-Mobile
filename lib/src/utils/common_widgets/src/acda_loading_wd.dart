import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../config/config.dart';

class ACDALoadingWD extends StatelessWidget {
  const ACDALoadingWD({Key? key, this.color}) : super(key: key);

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.hexagonDots(
      color: color ?? DesignSystem.acdaPrimary,
      size: 20,
    );
  }
}
