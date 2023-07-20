import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/config.dart';
import '../../../../../core/core.dart';
import '../../../../../utils/utils.dart';
import '../../../../dashboard/logic/logic.dart';
import '../../../logic/logic.dart';
import '../utils/utils.dart';

class DoneButtonWD extends ConsumerWidget {
  const DoneButtonWD({Key? key, required this.data}) : super(key: key);

  final ICommonDetectionResultEntity data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        final formInputState = ref.read(formInputProvider);

        final record = CommonRecordModel(
          label: formInputState.label!,
          bodyImageBase64: formInputState.bodyImageBytes.toBase64()!,
          bottomImageBase64: formInputState.bottomImageBytes.toBase64()!,
          shoesImageBase64: formInputState.shoesImageBytes.toBase64()!,
          result: data,
        );

        // HACK: we should not use state across feature
        ref.read(dashboardStateProvider.notifier).addData(record: record);

        ACDANavigation.instance.go(RoutePath.dashboard);
      },
      style: ButtonStyles.doneButtonStyle,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            ResultMessages.done,
            style: TextStyles.bodyText3Bold.copyWith(
              color: DesignSystem.g1,
            ),
          ),
          const SizedBox(width: 6),
          const Icon(
            Icons.arrow_back,
            textDirection: TextDirection.rtl,
          )
        ],
      ),
    );
  }
}
