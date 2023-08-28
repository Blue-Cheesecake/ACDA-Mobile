import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../config/config.dart';
import '../../../core/core.dart';
import '../logic/logic.dart';
import '../utils/utils.dart';

class FullBodyFormWD extends ConsumerWidget {
  const FullBodyFormWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: 7),
      child: EvaluationFormCardWD(
        title: EvaluationFormMessages.fullBodyTitle,
        description: EvaluationFormMessages.fullBodyDescription,
        onFormSelected: () => ACDAEventBus.instance.fire(
          SelectEvaluationFormFieldEvent(level: 1, formField: EvaluationFormField.fullBody),
        ),
        formField: EvaluationFormField.fullBody,
        nextField: EvaluationFormField.upperBody,
        currentSelectedFormField: ref.watch(evaluationFormInputStateProvider.select((value) => value.currentField)),
        totalCard: EvaluationFormMessages.totalCards,
        currentLevel: 1,
        currentImage: ref.watch(evaluationFormInputStateProvider.select((value) => value.fullBodyImageFile)),
        backgroundColor: DesignSystem.g24,
        onImageSelected: (XFile? selectedImage) {
          ref.read(evaluationFormInputStateProvider.notifier).updateFullBodyImageFile(selectedImage);
        },
        isImageFilled: ref.watch(
          evaluationFormStatusStateProvider.select((value) => value.isFullBodyImageFilled),
        ),
      ),
    );
  }
}
