import 'package:flutter/material.dart';

import '../../../../../config/config.dart';
import '../../../../../utils/utils.dart';
import '../utils/utils.dart';

class ResultPartWD extends StatelessWidget {
  const ResultPartWD({required this.isPassed, Key? key}) : super(key: key);

  final bool isPassed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 14,
          height: 14,
          decoration: const BoxDecoration(
            color: DesignSystem.g1,
            shape: BoxShape.circle,
          ),
          padding: const EdgeInsets.all(2),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: isPassed ? DesignSystem.g8 : DesignSystem.g9,
              shape: BoxShape.circle,
            ),
          ),
        ),
        const SizedBox(width: 6),
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13),
              child: Text(
                RecordCardMessages.resultTitle,
                style: TextStyles.bodyText8.copyWith(
                  fontSize: 8,
                  color: DesignSystem.g1,
                ),
              ),
            ),
            Text(
              isPassed ? ACDACommonMessages.passedTitle : ACDACommonMessages.failedTitle,
              style: TextStyles.bodyText4Bold.copyWith(
                color: isPassed ? DesignSystem.g8 : DesignSystem.g9,
              ),
            ),
          ],
        )
      ],
    );
  }
}
