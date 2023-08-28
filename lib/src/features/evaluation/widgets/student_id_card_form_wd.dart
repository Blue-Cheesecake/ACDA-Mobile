import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../config/config.dart';
import '../../../core/core.dart';
import '../logic/logic.dart';
import '../utils/utils.dart';

class StudentIdCardFormWD extends ConsumerWidget {
  const StudentIdCardFormWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 107),
        child: EvaluationFormCardWD(
          title: EvaluationFormMessages.studentIdCardTitle,
          description: EvaluationFormMessages.studentIdCardDescription,
          onFormSelected: () => ACDAEventBus.instance.fire(
            SelectEvaluationFormFieldEvent(level: 3, formField: EvaluationFormField.studentIdCard),
          ),
          prevField: EvaluationFormField.upperBody,
          formField: EvaluationFormField.studentIdCard,
          currentSelectedFormField: ref.watch(evaluationFormInputStateProvider.select((value) => value.currentField)),
          totalCard: EvaluationFormMessages.totalCards,
          currentLevel: 3,
          currentImage: ref.watch(evaluationFormInputStateProvider.select((value) => value.studentIdCardImageFile)),
          backgroundColor: DesignSystem.g26,
          onImageSelected: (XFile? selectedImage) {
            ref.read(evaluationFormInputStateProvider.notifier).updateStudentIdCardImageFile(selectedImage);
          },
          isImageFilled: ref.watch(
            evaluationFormStatusStateProvider.select((value) => value.isStudentIdCardImageFilled),
          ),
          shouldShrink: true,
          isLast: true,
        ),
      ),
    );
  }
}
