import 'package:flutter/material.dart';

import '../../../../../../config/config.dart';
import '../../../../../../utils/utils.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class RecordItemWD extends StatelessWidget {
  const RecordItemWD({Key? key, required this.record}) : super(key: key);

  final ICommonRecordEntity record;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: const BoxDecoration(
            color: DesignSystem.g1,
            borderRadius: BorderRadius.all(Radius.circular(7)),
            boxShadow: [
              BoxShadow(color: DesignSystem.g14, blurRadius: 5),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      RecordItemMessages.tagLabel(record.label),
                      style: TextStyles.bodyText4.copyWith(color: DesignSystem.g6),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ResultIndicatorWD(isPassed: record.result.isPassed),
                        const SizedBox(width: 7),
                        Text(RecordItemMessages.result, style: TextStyles.bodyText4.copyWith(color: DesignSystem.g6)),
                        const SizedBox(width: 4),
                        Text(
                          RecordItemMessages.resultText(isPassed: record.result.isPassed),
                          style: TextStyles.bodyText4.copyWith(
                            color: record.result.isPassed ? DesignSystem.g8 : DesignSystem.g9,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                ImagesListWD(
                  bodyImageBytes: record.bodyImageBase64.toBytes()!,
                  bottomImageBytes: record.bottomImageBase64.toBytes()!,
                  shoesImageBytes: record.shoesImageBase64.toBytes()!,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
