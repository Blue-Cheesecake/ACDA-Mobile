import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/config.dart';
import '../logic/logic.dart';

class CameraCloseButtonWD extends ConsumerWidget {
  const CameraCloseButtonWD({required this.providerKey, Key? key}) : super(key: key);

  final String providerKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isCapturedImage =
        ref.watch(acdaTimerCameraStateProvider.call(providerKey).select((value) => value.pickedImage)) != null;

    if (isCapturedImage) {
      return GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
          ref.read(acdaTimerCameraStateProvider.call(providerKey).notifier).clearStateOnDispose();
          ref.read(acdaTimerCameraStateProvider.call(providerKey).notifier).updateIsSwitching(true);
        },
        child: const Icon(
          Icons.arrow_back_ios_new,
          size: 23,
          color: DesignSystem.g1,
        ),
      );
    }

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: const Icon(
        CupertinoIcons.clear_thick,
        size: 23,
        color: DesignSystem.g1,
      ),
    );
  }
}
