import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/config.dart';
import '../../utils/utils.dart';
import 'logic/logic.dart';
import 'widgets/widgets.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        children: [
          Row(
            children: [
              ACDAAssets.appIconPure(size: const Size(58, 58)),
              const SizedBox(width: 10),
              ACDAAssets.appTitle(size: const Size(90, 44)),
            ],
          ),
          const SizedBox(height: 5),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              AllFilterBoxWD(),
              SizedBox(width: 6),
              PassedFilterBoxWD(),
              SizedBox(width: 6),
              FailedFilterBoxWD(),
            ],
          ),
          Consumer(
            builder: (context, ref, child) {
              late final BorderRadiusGeometry borderRadius;
              const radius = Radius.circular(6);

              if (ref.watch(historyInputStateProvider).isSelectedAllResult) {
                borderRadius = const BorderRadius.only(topRight: radius);
              }
              if (ref.watch(historyInputStateProvider).isSelectedPassedResult) {
                borderRadius = const BorderRadius.vertical(top: radius);
              }
              if (ref.watch(historyInputStateProvider).isSelectedFailedResult) {
                borderRadius = const BorderRadius.only(topLeft: radius);
              }

              return Flexible(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: borderRadius,
                    color: DesignSystem.g1,
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
