import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/config.dart';
import '../../../logic/logic.dart';
import '../../../../../utils/utils.dart';

class DateDeleteBoxWD extends ConsumerWidget {
  const DateDeleteBoxWD({required this.addedAt, Key? key}) : super(key: key);

  final DateTime addedAt;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDeletingMode = ref.watch(historyModeStateProvider.select((value) => value.isDeletingMode));

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (!isDeletingMode) const SizedBox(),
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
