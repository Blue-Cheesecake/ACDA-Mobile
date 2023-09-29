import 'package:flutter/material.dart';

import '../../../../config/config.dart';
import '../../../utils.dart';
import 'widgets/widgets.dart';

class ACDAEvaluationResultWD extends StatelessWidget {
  const ACDAEvaluationResultWD({required this.date, required this.result, Key? key}) : super(key: key);

  final DateTime date;
  final ICommonEvaluationResultEntity result;

  @override
  Widget build(BuildContext context) {
    Widget indicator = const PassedIndicatorWD();
    Widget textHeader = const PassedTextWD();

    if (!result.isPassed) {
      indicator = const FailedIndicatorWD();
      textHeader = const FailedTextWD();
    }

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 21.5),
          child: Container(
            width: 340,
            height: 442,
            decoration: BoxDecoration(
              color: DesignSystem.g1,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 32),
                Center(child: textHeader),
                const SizedBox(height: 18),
                const ACDADottedLine(
                  direction: Axis.horizontal,
                  lineThickness: 1,
                  dashColor: DesignSystem.g5,
                  dashGapLength: 3,
                ),
                const SizedBox(height: 13),
                ResultSummaryWD(date: date, result: result),
              ],
            ),
          ),
        ),
        const ACDAInnerShadowWD(
          shadowHeight: 8,
          shadowPadding: EdgeInsets.only(top: 21.5),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: indicator,
        ),
      ],
    );
  }
}
