import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../config/config.dart';
import '../../../../../../utils/utils.dart';
import '../../utils/utils.dart';
import 'filter_adjustment.dart';

class FilterAdjustmentWD extends ConsumerWidget {
  const FilterAdjustmentWD({required this.removeOverlay, Key? key}) : super(key: key);

  final VoidCallback removeOverlay;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        width: constraints.maxWidth * 0.91,
        margin: const EdgeInsets.only(bottom: 70),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: DesignSystem.g1,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
                  ACDAAssets.appIcon(),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ActionBarMessages.historyTitle,
                        style: TextStyles.bodyText6Bold.copyWith(color: DesignSystem.acdaPrimary.withOpacity(0.8)),
                      ),
                      Text(
                        ActionBarMessages.adjustTitle,
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
            FilterAdjustmentCoreBoxWD(removeOverlay: removeOverlay),
          ],
        ),
      );
    });
  }
}
