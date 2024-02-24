import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/config.dart';
import '../../../../keys/keys.dart';
import 'logic/logic.dart';
import 'widgets/widgets.dart';

class ActionBarWD extends ConsumerWidget {
  const ActionBarWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      key: HistoryPageKeys.actionBarWD,
      onTap: () {
        ref.read(actionBarStateProvider.notifier).switchAction();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeInOut,
        height: 97,
        width: ref.watch(actionBarStateProvider.select((value) => value.actionBarWidth)),
        decoration: BoxDecoration(
          color: DesignSystem.g1,
          borderRadius: const BorderRadius.horizontal(left: Radius.circular(20)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 4,
              color: DesignSystem.g0.withOpacity(0.25),
              offset: const Offset(0, 4),
            ),
          ],
        ),
        padding: const EdgeInsets.only(
          top: 18,
          bottom: 18,
          left: 4,
          right: 4,
        ),
        child: Builder(
          builder: (context) {
            final isOpening = ref.watch(actionBarStateProvider.select((value) => value.isOpening));

            if (isOpening) {
              return FutureBuilder(
                future: Future.delayed(const Duration(milliseconds: 150)),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return const ActionMenusWD();
                  }
                  return const SizedBox.shrink();
                },
              );
            }

            return const Icon(
              Icons.more_vert,
              color: DesignSystem.acdaPrimary,
            );
          },
        ),
      ),
    );
  }
}
