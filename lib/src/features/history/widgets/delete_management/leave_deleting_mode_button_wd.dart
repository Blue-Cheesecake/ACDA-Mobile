import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/config.dart';
import '../../logic/logic.dart';

class LeaveDeletingModeButtonWd extends ConsumerWidget {
  const LeaveDeletingModeButtonWd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: () {
        ref.read(historyModeStateProvider.notifier).leaveDeletingMode();
      },
      icon: const Icon(
        Icons.keyboard_arrow_left_sharp,
        size: 48,
        color: DesignSystem.g1,
      ),
    );
  }
}
