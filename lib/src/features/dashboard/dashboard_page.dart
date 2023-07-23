import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/config.dart';
import 'logic/logic.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          DashboardMessages.title,
          style: TextStyles.header5.copyWith(color: DesignSystem.g1),
        ),
        leading: const SizedBox.shrink(),
        actions: const [MoreActionButtonWD()],
      ),
      body: Consumer(
        builder: (context, ref, _) {
          return ref.watch(dashboardStateProvider).when(
            empty: () {
              return const EmptyStateWD();
            },
            data: (data) {
              return NormalStateWD(data: data);
            },
          );
        },
      ),
      floatingActionButton: Consumer(
        builder: (context, ref, child) {
          return ref.watch(dashboardStateProvider).when(
            empty: () {
              return const SizedBox.shrink();
            },
            data: (data) {
              return const GoEvaluateButtonWD();
            },
          );
        },
      ),
    );
  }
}
