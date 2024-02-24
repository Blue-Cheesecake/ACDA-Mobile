import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../../../config/config.dart';
import '../../../../../../../../keys/keys.dart';
import '../../../../../../logic/logic.dart';
import '../../../../../../utils/utils.dart';
import '../../../../utils/utils.dart';

class OrderRowWD extends StatelessWidget {
  const OrderRowWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        _OldestButtonWD(),
        SizedBox(width: 8),
        _NewestButtonWD(),
      ],
    );
  }
}

class _OldestButtonWD extends ConsumerWidget {
  const _OldestButtonWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected = ref.watch(historyInputStateProvider.select((value) => value.isSelectedOldestOrder));

    return Expanded(
      child: GestureDetector(
        key: HistoryPageKeys.oldestOptionButtonWD,
        onTap: () {
          ref.read(historyInputStateProvider.notifier).updateTempOrderOption(SortOption.oldest);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: DesignSystem.g0),
            borderRadius: BorderRadius.circular(6),
            boxShadow: <BoxShadow>[
              BoxShadow(
                blurRadius: 4,
                color: DesignSystem.g0.withOpacity(0.25),
                offset: const Offset(0, 4),
              ),
            ],
            color: isSelected ? DesignSystem.acdaPrimary : DesignSystem.g1,
          ),
          child: Text(
            ActionBarMessages.ascending,
            textAlign: TextAlign.center,
            style: TextStyles.bodyText4Bold.copyWith(
              color: isSelected ? DesignSystem.g1 : DesignSystem.acdaPrimary,
            ),
          ),
        ),
      ),
    );
  }
}

class _NewestButtonWD extends ConsumerWidget {
  const _NewestButtonWD();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected = ref.watch(historyInputStateProvider.select((value) => value.isSelectedNewestOrder));

    return Expanded(
      child: GestureDetector(
        onTap: () {
          ref.read(historyInputStateProvider.notifier).updateTempOrderOption(SortOption.newest);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: DesignSystem.g0),
            borderRadius: BorderRadius.circular(6),
            boxShadow: <BoxShadow>[
              BoxShadow(
                blurRadius: 4,
                color: DesignSystem.g0.withOpacity(0.25),
                offset: const Offset(0, 4),
              ),
            ],
            color: isSelected ? DesignSystem.acdaPrimary : DesignSystem.g1,
          ),
          child: Text(
            ActionBarMessages.descending,
            textAlign: TextAlign.center,
            style: TextStyles.bodyText4Bold.copyWith(
              color: isSelected ? DesignSystem.g1 : DesignSystem.acdaPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
