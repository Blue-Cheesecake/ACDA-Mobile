import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/config.dart';
import '../../utils/utils.dart';
import 'logic/logic.dart';
import 'widgets/widgets.dart';

class HistoryPage extends ConsumerStatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  ConsumerState<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends ConsumerState<HistoryPage> {
  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(getRecordsStateProvider.notifier).fetchRecords();
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDeletingMode = ref.watch(historyModeStateProvider.select((value) => value.isDeletingMode));

    return Stack(
      children: [
        Padding(
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
                      child: Builder(
                        builder: (context) {
                          final Widget? deleteRecordWidget = ref.watch(deleteRecordsStateProvider).whenOrNull(
                                loading: () => const Center(
                                  child: LoadingRecordWD(),
                                ),
                              );

                          if (deleteRecordWidget != null) {
                            return deleteRecordWidget;
                          }

                          return ref.watch(getRecordsStateProvider).when(
                            initial: () {
                              return const SizedBox.shrink();
                            },
                            loading: () {
                              return const Center(
                                child: LoadingRecordWD(),
                              );
                            },
                            data: (records) {
                              return Stack(
                                children: [
                                  if (isDeletingMode) const DeleteManagementWD(),
                                  RecordListWD(records: records),
                                ],
                              );
                            },
                            error: () {
                              return const Center(
                                child: Text('error on fetching'),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
        if (isDeletingMode)
          const Positioned(
            top: 20,
            left: 5,
            child: LeaveDeletingModeButtonWd(),
          ),
        if (isDeletingMode)
          const Positioned(
            right: 22,
            bottom: 10,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                DeleteRecordButtonWD(),
                SizedBox(width: 9),
                DeSelectAllButtonWD(),
              ],
            ),
          ),
        const Positioned(
          top: 20,
          right: 0,
          child: ActionBarWD(),
        ),
      ],
    );
  }
}
