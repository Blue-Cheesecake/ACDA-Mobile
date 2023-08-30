import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/config.dart';
import '../../../logic/logic.dart';
import '../../../utils/utils.dart';
import '../utils/utils.dart';

class TotalIndicator extends ConsumerWidget {
  const TotalIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IndicatorWd(
      title: DashboardMessages.totalTitle,
      color: DesignSystem.g1,
      value: ref.watch(basicInfoDataStateProvider.select((value) => value.numPassed)),
    );
  }
}
