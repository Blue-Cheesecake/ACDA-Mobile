import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../config/config.dart';
import '../../core/core.dart';
import 'logic/logic.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class EvaluationFormPage extends StatelessWidget {
  const EvaluationFormPage({Key? key}) : super(key: key);

  static const totalCards = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(EvaluationFormMessages.title, style: TextStyles.header5.copyWith(color: DesignSystem.g1)),
      ),
      body: Container(
        margin: EdgeInsets.zero,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: <Color>[
            DesignSystem.acdaPrimary,
            DesignSystem.g23,
            DesignSystem.g21,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: <double>[
            0.3,
            0.7,
            1.0,
          ],
        )),
        child: Stack(
          children: [
            const Align(
              alignment: Alignment.topRight,
              child: Padding(padding: EdgeInsets.only(top: 10, right: 12), child: FormStatusWD()),
            ),
            Consumer(
              builder: (context, ref, child) => Padding(
                padding: const EdgeInsets.only(top: 7),
                child: EvaluationFormCardWD(
                  title: EvaluationFormMessages.fullBodyTitle,
                  description: EvaluationFormMessages.fullBodyDescription,
                  onFormSelected: () => ACDAEventBus.instance.fire(
                    SelectEvaluationFormFieldEvent(level: 1, formField: EvaluationFormField.fullBody),
                  ),
                  formField: EvaluationFormField.fullBody,
                  nextField: EvaluationFormField.upperBody,
                  currentSelectedFormField:
                      ref.watch(evaluationFormInputStateProvider.select((value) => value.currentField)),
                  totalCard: totalCards,
                  currentLevel: 1,
                  onImageSelected: (XFile? selectedImage) {},
                  isImageFilled: ref.watch(
                    evaluationFormStatusStateProvider.select((value) => value.isFullBodyImageFilled),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Consumer(
                builder: (context, ref, child) {
                  return Padding(
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
                      currentSelectedFormField:
                          ref.watch(evaluationFormInputStateProvider.select((value) => value.currentField)),
                      totalCard: totalCards,
                      currentLevel: 2,
                      onImageSelected: (XFile? selectedImage) {},
                      isImageFilled: ref.watch(
                        evaluationFormStatusStateProvider.select((value) => value.isUpperBodyImageFilled),
                      ),
                      shouldShrink: true,
                    ),
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Consumer(
                builder: (context, ref, child) => Padding(
                  padding: const EdgeInsets.only(top: 107),
                  child: EvaluationFormCardWD(
                    title: EvaluationFormMessages.studentIdCardTitle,
                    description: EvaluationFormMessages.studentIdCardDescription,
                    onFormSelected: () => ACDAEventBus.instance.fire(
                      SelectEvaluationFormFieldEvent(level: 3, formField: EvaluationFormField.studentIdCard),
                    ),
                    prevField: EvaluationFormField.upperBody,
                    formField: EvaluationFormField.studentIdCard,
                    currentSelectedFormField:
                        ref.watch(evaluationFormInputStateProvider.select((value) => value.currentField)),
                    totalCard: totalCards,
                    currentLevel: 3,
                    onImageSelected: (XFile? selectedImage) {},
                    isImageFilled: ref.watch(
                      evaluationFormStatusStateProvider.select((value) => value.isUpperBodyImageFilled),
                    ),
                    shouldShrink: true,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
