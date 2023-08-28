import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../config/config.dart';
import '../../../core/core.dart';
import '../logic/logic.dart';
import '../utils/utils.dart';

class UpperBodyFormWD extends ConsumerWidget {
  const UpperBodyFormWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 56),
        child: EvaluationFormCardWD(
          title: EvaluationFormMessages.upperBodyTitle,
          description: EvaluationFormMessages.upperBodyDecription,
          onFormSelected: () => ACDAEventBus.instance.fire(
            SelectEvaluationFormFieldEvent(level: 2, formField: EvaluationFormField.upperBody),
          ),
          prevField: EvaluationFormField.fullBody,
          formField: EvaluationFormField.upperBody,
          nextField: EvaluationFormField.studentIdCard,
          currentSelectedFormField: ref.watch(evaluationFormInputStateProvider.select((value) => value.currentField)),
          totalCard: EvaluationFormMessages.totalCards,
          currentLevel: 2,
          currentImage: ref.watch(evaluationFormInputStateProvider.select((value) => value.upperBodyImageFile)),
          backgroundColor: DesignSystem.g25,
          onImageSelected: (XFile? selectedImage) {
            ref.read(evaluationFormInputStateProvider.notifier).updateUpperBodyImageFile(selectedImage);
          },
          isImageFilled: ref.watch(
            evaluationFormStatusStateProvider.select((value) => value.isUpperBodyImageFilled),
          ),
          shouldShrink: true,
        ),
      ),
    );
  }
}
