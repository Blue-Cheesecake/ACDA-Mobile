import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/config.dart';
import '../logic/logic.dart';
import '../utils/utils.dart';

class CameraTimerOptionWD extends ConsumerWidget {
  const CameraTimerOptionWD({required this.providerKey, Key? key}) : super(key: key);

  final String providerKey;

  TextStyle _activeTextStyle() {
    return TextStyles.bodyText5;
  }

  TextStyle _inactiveTextStyle() {
    return TextStyles.bodyText5.copyWith(color: DesignSystem.g1);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TimerOption currentOption =
        ref.watch(acdaTimerCameraStateProvider.call(providerKey).select((value) => value.timerOption));

    return CustomSlidingSegmentedControl<int>(
      initialValue: currentOption.value,
      children: {
        1: Text(
          TimerOption.none.description,
          style: currentOption == TimerOption.none ? _activeTextStyle() : _inactiveTextStyle(),
        ),
        2: Text(
          TimerOption.threeSec.description,
          style: currentOption == TimerOption.threeSec ? _activeTextStyle() : _inactiveTextStyle(),
        ),
        3: Text(
          TimerOption.tenSec.description,
          style: currentOption == TimerOption.tenSec ? _activeTextStyle() : _inactiveTextStyle(),
        ),
      },
      decoration: BoxDecoration(
        color: DesignSystem.g0.withOpacity(0.5),
        borderRadius: BorderRadius.circular(8),
      ),
      thumbDecoration: BoxDecoration(
        color: DesignSystem.g1,
        borderRadius: BorderRadius.circular(6),
      ),
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInToLinear,
      onValueChanged: (value) {
        ref.read(acdaTimerCameraStateProvider.call(providerKey).notifier).updateTimerOptionFromValue(value);
      },
    );
  }
}
