import 'package:flutter/material.dart';

import '../../../../config/config.dart';
import '../../domain/domain.dart';
import 'widgets/widgets.dart';

class RecordCartWD extends StatelessWidget {
  const RecordCartWD({required this.data, required this.isSelected, Key? key}) : super(key: key);

  final IEvaluationRecordEntity data;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 63,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.horizontal(
          left: Radius.circular(99),
          right: Radius.circular(30),
        ),
        gradient: LinearGradient(colors: [
          DesignSystem.g37,
          DesignSystem.acdaPrimary.withOpacity(0.8),
        ]),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: DesignSystem.g0.withOpacity(0.25),
            offset: const Offset(0, 4),
            spreadRadius: 1,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 11),
            child: ResultPartWD(isPassed: data.result.isPassed),
          ),
          RecordImagesWD(
            fullBodyImageBase64: data.fullBodyImage,
            upperBodyImageBase64: data.upperBodyImage,
            studentIdCardImageBase64: data.studentIdCardImage,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7, bottom: 7, right: 9),
            child: DateDeleteBoxWD(addedAt: data.addedAt),
          ),
        ],
      ),
    );
  }
}
