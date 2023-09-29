import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/config.dart';
import '../../../../../utils/utils.dart';
import '../../../logic/logic.dart';
import '../utils/utils.dart';

class PassedIndicatorWD extends ConsumerWidget {
  const PassedIndicatorWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IndicatorWd(
      title: ACDACommonMessages.passedTitle,
      color: DesignSystem.g31,
      value: ref.watch(basicInfoDataStateProvider.select((value) => value.numPassed)),
    );
  }
}
