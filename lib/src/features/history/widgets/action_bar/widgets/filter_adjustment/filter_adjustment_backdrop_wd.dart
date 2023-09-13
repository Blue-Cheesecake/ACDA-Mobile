import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../../../config/config.dart';
import 'filter_adjustment_wd.dart';

class FilterAdjustmentBackdropWD extends StatelessWidget {
  const FilterAdjustmentBackdropWD({
    required this.removeOverlay,
    required this.mainTitle,
    required this.subtitle,
    Key? key,
  }) : super(key: key);

  final VoidCallback removeOverlay;
  final String mainTitle;
  final String subtitle;

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
                    filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
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
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: FilterAdjustmentWD(removeOverlay: removeOverlay),
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
