import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/config.dart';
import '../logic/logic.dart';

class CameraSwitchButtonWd extends ConsumerWidget {
  const CameraSwitchButtonWd({required this.providerKey, Key? key}) : super(key: key);

  final String providerKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(acdaTimerCameraStateProvider.call(providerKey).notifier).switchCameraOption();
        Navigator.of(context).pop();
      },
      child: const Icon(
        Icons.sync_outlined,
        color: DesignSystem.g1,
      ),
    );
  }
}
