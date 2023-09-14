import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/config.dart';
import '../../../logic/logic.dart';
import '../../../../../utils/utils.dart';

class DateDeleteBoxWD extends ConsumerWidget {
  const DateDeleteBoxWD({required this.id, required this.addedAt, Key? key}) : super(key: key);

  final String id;
  final DateTime addedAt;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDeletingMode = ref.watch(historyModeStateProvider.select((value) => value.isDeletingMode));
    final isSelected = ref.watch(historyInputStateProvider.select((value) => value.isIdOnDeleting(id)));

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (!isDeletingMode) const SizedBox(),
        if (isDeletingMode) _IndicatorBox(isSelected: isSelected),
        _DatePartWD(addedAt: addedAt),
      ],
    );
  }
}

class _DatePartWD extends StatelessWidget {
  const _DatePartWD({required this.addedAt, Key? key}) : super(key: key);

  final DateTime addedAt;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          addedAt.getDateCommaString!,
          style: TextStyles.bodyText8.copyWith(
            fontSize: 8,
            color: DesignSystem.g1,
          ),
        ),
        Text(
          addedAt.mediumDateString!,
          style: TextStyles.bodyText8.copyWith(
            fontSize: 8,
            color: DesignSystem.g1,
          ),
        ),
      ],
    );
  }
}

class _IndicatorBox extends StatelessWidget {
  const _IndicatorBox({required this.isSelected, Key? key}) : super(key: key);

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    if (!isSelected) {
      return Container(
        width: 18,
        height: 18,
        padding: const EdgeInsets.all(2),
        decoration: const BoxDecoration(color: DesignSystem.g6, shape: BoxShape.circle),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(color: DesignSystem.g1, shape: BoxShape.circle),
        ),
      );
    }

    return Container(
      width: 18,
      height: 18,
      padding: const EdgeInsets.all(2),
      decoration: const BoxDecoration(color: DesignSystem.g39, shape: BoxShape.circle),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(2),
        decoration: const BoxDecoration(color: DesignSystem.g1, shape: BoxShape.circle),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(color: DesignSystem.g39, shape: BoxShape.circle),
          child: const Icon(
            Icons.check,
            color: DesignSystem.g1,
            size: 8,
          ),
        ),
      ),
    );
  }
}
