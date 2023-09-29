import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../config/config.dart';
import '../../../../logic/logic.dart';
import '../utils.dart';

class HistoryFilterBoxWD extends ConsumerWidget {
  const HistoryFilterBoxWD({
    required this.title,
    required this.flex,
    required this.isSelected,
    required this.onSelectedColor,
    required this.onPressed,
    required this.clipSideWhenSelected,
    Key? key,
  }) : super(key: key);

  final String title;
  final int flex;
  final bool isSelected;
  final Color onSelectedColor;
  final VoidCallback onPressed;
  final ClipSide clipSideWhenSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final container = GestureDetector(
      onTap: () {
        // disable onPressed while using deleting mode
        if (ref.read(historyModeStateProvider.select((value) => value.isDeletingMode))) {
          return;
        }

        onPressed();
      },
      child: Container(
        padding: isSelected ? const EdgeInsets.only(top: 7, bottom: 21) : const EdgeInsets.symmetric(vertical: 7),
        decoration: BoxDecoration(
          color: isSelected ? DesignSystem.g1 : DesignSystem.g36.withOpacity(0.1),
          borderRadius: isSelected
              ? const BorderRadius.vertical(top: Radius.circular(6))
              : const BorderRadius.all(Radius.circular(6)),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyles.bodyText3Bold.copyWith(
            color: isSelected ? onSelectedColor : DesignSystem.g1,
          ),
        ),
      ),
    );

    return Expanded(
      flex: flex,
      child: isSelected
          ? ClipPath(
              clipper: WaveContainerClipper(clipSide: clipSideWhenSelected),
              child: container,
            )
          : container,
    );
  }
}
