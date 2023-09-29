import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../config/config.dart';
import 'widgets/widgets.dart';

class ACDAHelperPopupWD extends StatelessWidget {
  const ACDAHelperPopupWD({
    required this.removeOverlay,
    required this.mainTitle,
    required this.subtitle,
    Key? key,
    this.child,
  }) : super(key: key);

  final VoidCallback removeOverlay;
  final String mainTitle;
  final String subtitle;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DesignSystem.g0.withOpacity(0.15),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SizedBox(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            child: Stack(
              children: [
                SizedBox(
                  height: constraints.maxHeight,
                  width: constraints.maxWidth,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
                    child: Container(color: DesignSystem.g1.withOpacity(0.0)),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 14,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          removeOverlay();
                        },
                        child: const Icon(Icons.close, size: 32, color: DesignSystem.g1),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: HelperContainerWD(
                    width: constraints.maxWidth * 0.91,
                    height: constraints.maxHeight * 0.78,
                    mainTitle: mainTitle,
                    subtitle: subtitle,
                    child: child,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
