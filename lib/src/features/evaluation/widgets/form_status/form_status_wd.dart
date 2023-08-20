import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/config.dart';
import '../../logic/logic.dart';
import '../widgets.dart';

class FormStatusWD extends StatelessWidget {
  const FormStatusWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(99)),
        color: DesignSystem.g1,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Consumer(
            builder: (_, ref, __) => StatusCircleWD(
              isSelected: ref.read(evaluationFormStatusStateProvider.select((value) => value.isFullBodyImageFilled)),
            ),
          ),
          Consumer(
            builder: (_, ref, __) => StatusCircleWD(
              isSelected: ref.read(evaluationFormStatusStateProvider.select((value) => value.isUpperBodyImageFilled)),
            ),
          ),
          Consumer(
            builder: (_, ref, __) => StatusCircleWD(
              isSelected: ref.read(
                evaluationFormStatusStateProvider.select((value) => value.isStudentIdCardImageFilled),
              ),
              isLast: true,
            ),
          ),
        ],
      ),
    );
  }
}
