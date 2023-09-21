import 'package:flutter/material.dart';

import '../../../../../config/config.dart';
import '../../../../utils.dart';
import '../utils/utils.dart';

class ResultSummaryWD extends StatelessWidget {
  const ResultSummaryWD({required this.date, required this.result, Key? key}) : super(key: key);

  final DateTime date;
  final ICommonEvaluationResultEntity result;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Opacity(
            opacity: 0.10,
            child: ACDAEvaluationResultAssets.fadedAppIcon,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 19, right: 19, bottom: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ACDAEvaluationResultMessages.results,
                style: TextStyles.header5.copyWith(
                  color: DesignSystem.acdaPrimary,
                ),
              ),
              const SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ACDAEvaluationResultMessages.date,
                    style: TextStyles.bodyText2Bold.copyWith(
                      color: DesignSystem.acdaPrimary,
                    ),
                  ),
                  Text(
                    date.resultDate,
                    style: TextStyles.bodyText2.copyWith(
                      color: DesignSystem.g6,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ACDAEvaluationResultMessages.time,
                    style: TextStyles.bodyText2Bold.copyWith(
                      color: DesignSystem.acdaPrimary,
                    ),
                  ),
                  Text(
                    date.timeM,
                    style: TextStyles.bodyText2.copyWith(
                      color: DesignSystem.g6,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              if (!result.isPassed)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ACDAEvaluationResultMessages.details,
                      style: TextStyles.bodyText2Bold.copyWith(
                        color: DesignSystem.acdaPrimary,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        result.message ?? '-',
                        textAlign: TextAlign.right,
                        style: TextStyles.bodyText2.copyWith(
                          color: DesignSystem.g6,
                        ),
                        maxLines: 4,
                      ),
                    ),
                  ],
                )
            ],
          ),
        ),
      ],
    );
  }
}
