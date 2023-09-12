import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/config.dart';
import '../../../../../utils/utils.dart';
import '../../../logic/basic_info_data/basic_info_data.dart';
import '../utils/utils.dart';

class FailedIndicatorWD extends ConsumerWidget {
  const FailedIndicatorWD({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IndicatorWd(
      title: ACDACommonMessages.failedTitle,
      color: DesignSystem.g32,
      value: ref.watch(basicInfoDataStateProvider.select((value) => value.numFailed)),
    );
  }
}
