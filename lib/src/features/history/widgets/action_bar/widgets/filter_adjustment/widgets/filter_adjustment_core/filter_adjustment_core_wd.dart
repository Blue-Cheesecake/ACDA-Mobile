import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../../../config/config.dart';
import '../../../../../../../../keys/keys.dart';
import '../../../../../../../../utils/utils.dart';
import '../../../../../../logic/logic.dart';
import '../../../../utils/utils.dart';
import 'filter_adjustment_core.dart';

class FilterAdjustmentCoreBoxWD extends StatelessWidget {
  const FilterAdjustmentCoreBoxWD({required this.removeOverlay, Key? key}) : super(key: key);

  final VoidCallback removeOverlay;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 11, left: 22, right: 22, bottom: 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ActionBarMessages.orderTitle,
                style: TextStyles.bodyText3Bold.copyWith(
                  color: DesignSystem.acdaPrimary,
                ),
              ),
              const SizedBox(height: 11),
              const OrderRowWD(),
              const SizedBox(height: 11),
              Text(
                ActionBarMessages.dateTitle,
                style: TextStyles.bodyText3Bold.copyWith(
                  color: DesignSystem.acdaPrimary,
                ),
              ),
              const SizedBox(height: 11),
              const SelectDateRangeWD(),
            ],
          ),
        ),
        // Divider
        Container(
          height: 1,
          width: double.infinity,
          decoration: const BoxDecoration(color: DesignSystem.g4),
        ),
        _ActionRowWD(removeOverlay)
      ],
    );
  }
}

class _ActionRowWD extends StatelessWidget {
  const _ActionRowWD(this.removeOverlay);

  final VoidCallback removeOverlay;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          /**
           * Close Button
           */
          Expanded(
            child: GestureDetector(
              onTap: () {
                removeOverlay();
              },
              child: Text(
                ACDACommonMessages.close,
                textAlign: TextAlign.center,
                style: TextStyles.bodyText1.copyWith(
                  color: DesignSystem.g5,
                ),
              ),
            ),
          ),
          const VerticalDivider(
            thickness: 1,
            color: DesignSystem.g4,
          ),

          /**
           * Submit Button
           */
          Consumer(
            builder: (context, ref, child) => Expanded(
              child: GestureDetector(
                key: HistoryPageKeys.submitOptionButtonWD,
                onTap: () {
                  ref.read(historyInputStateProvider.notifier).saveTempInput();
                  ref.read(getRecordsStateProvider.notifier).fetchRecords();
                  removeOverlay();
                },
                child: Text(
                  ACDACommonMessages.submit,
                  textAlign: TextAlign.center,
                  style: TextStyles.bodyText1Bold.copyWith(
                    color: DesignSystem.g38,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
