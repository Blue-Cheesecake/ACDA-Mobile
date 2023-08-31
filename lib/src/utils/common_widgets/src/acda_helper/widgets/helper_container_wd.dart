import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../config/config.dart';
import '../../../../utils.dart';

class HelperContainerWD extends StatelessWidget {
  const HelperContainerWD({
    required this.width,
    required this.height,
    required this.mainTitle,
    required this.subtitle,
    super.key,
    this.child,
  });

  final double width;
  final double height;
  final String mainTitle;
  final String subtitle;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.only(bottom: 70),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: DesignSystem.g1,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 14,
              left: 12,
              right: 12,
              bottom: 5,
            ),
            child: Row(
              children: [
                ACDAAssets.appIcon,
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      subtitle,
                      style: TextStyles.bodyText6Bold.copyWith(color: DesignSystem.acdaPrimary.withOpacity(0.8)),
                    ),
                    Text(
                      mainTitle,
                      style: TextStyles.bodyText2Bold.copyWith(color: DesignSystem.acdaPrimary),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 5),
          const Divider(
            color: DesignSystem.g6,
            thickness: 1,
            height: 0,
          ),
          Expanded(
            child: CupertinoScrollbar(
              child: ListView(
                shrinkWrap: true,
                children: [
                  if (child != null) child!,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
