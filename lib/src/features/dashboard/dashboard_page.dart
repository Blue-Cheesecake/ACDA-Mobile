import 'package:acda_mobile/src/features/dashboard/widgets/empty_state_wd.dart';
import 'package:acda_mobile/src/features/dashboard/widgets/normal_state_wd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/config.dart';
import 'logic/logic.dart';
import 'utils/utils.dart';

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
      ),
      body: Consumer(
        builder: (context, ref, _) {
          final bool isEmpty = ref.watch(dashboardStateNotifierProvider).isEmptyState;

          if (isEmpty) {
            return const EmptyStateWD();
          }
          return const NormalStateWD();
        },
      ),
    );
  }
}
