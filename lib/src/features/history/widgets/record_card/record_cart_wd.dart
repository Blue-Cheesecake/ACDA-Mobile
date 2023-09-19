import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/config.dart';
import '../../../../core/core.dart';
import '../../domain/domain.dart';
import '../../logic/logic.dart';
import 'widgets/widgets.dart';

class RecordCartWD extends ConsumerWidget {
  const RecordCartWD({required this.data, required this.isSelected, Key? key}) : super(key: key);

  final IEvaluationRecordEntity data;
  final bool isSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelectedOnDeleting = ref.read(historyInputStateProvider.select((value) => value.isIdOnDeleting(data.id)));

    return GestureDetector(
      onTap: () {
        if (!(ref.read(historyModeStateProvider.select((value) => value.isDeletingMode)))) {
          ACDANavigation.instance.push(RoutePath.resultHistory, extra: data);
          return;
        }

        if (isSelectedOnDeleting) {
          ref.read(historyInputStateProvider.notifier).removeDeleteId(data.id);
        } else {
          ref.read(historyInputStateProvider.notifier).addDeleteId(data.id);
        }
      },
      child: Container(
        width: double.infinity,
        height: 63,
        decoration: BoxDecoration(
          border: isSelectedOnDeleting
              ? Border.all(
                  width: 2.5,
                  color: DesignSystem.g39,
                )
              : Border.all(
                  width: 2.5,
                  color: DesignSystem.acdaPrimary,
                ),
          borderRadius: const BorderRadius.horizontal(
            left: Radius.circular(99),
            right: Radius.circular(30),
          ),
          gradient: LinearGradient(
            colors: isSelectedOnDeleting
                ? [
                    DesignSystem.g40,
                    DesignSystem.g41,
                  ]
                : [
                    DesignSystem.g37,
                    DesignSystem.acdaPrimary.withOpacity(0.8),
                  ],
          ),
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
              child: DateDeleteBoxWD(
                id: data.id,
                addedAt: data.addedAt,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
