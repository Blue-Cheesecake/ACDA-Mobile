import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'logic/logic.dart';
import 'widgets/widgets.dart';

class DashboardPage extends ConsumerStatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  ConsumerState<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends ConsumerState<DashboardPage> {
  @override
  void initState() {
    super.initState();
    ref.read(basicInfoStateProvider.notifier).fetchBasicInfo();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(basicInfoStateProvider).whenOrNull(
          error: () {},
        );

    return const Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(height: 20),
        HomeHeaderWD(),
        SizedBox(height: 10),
        GoodLuckWd(),
        SizedBox(height: 10),
        EvaluationHistoryNumberWD(),
        SizedBox(height: 16),
        DressGuidelineWD(),
      ],
    );
  }
}
