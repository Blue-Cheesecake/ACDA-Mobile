import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../config/config.dart';
import '../../../../core/core.dart';
import '../../../../utils/utils.dart';
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
          cameraSection: CameraSection.upperBody,
          title: EvaluationFormMessages.upperBodyTitle,
          description: EvaluationFormMessages.upperBodyDecription,
          onFormSelected: () => ACDAEventBus.instance.fire(
            SelectEvaluationFormFieldEvent(level: 2, formField: EvaluationFormField.upperBody),
          ),
          prevField: EvaluationFormField.fullBody,
          formField: EvaluationFormField.upperBody,
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
          isLast: true,
          shouldShrink: true,
          popupWDChild: (removeOverlay) => ACDAHelperPopupWD(
            removeOverlay: removeOverlay,
            mainTitle: EvaluationFormMessages.tutorialTitle,
            subtitle: EvaluationFormMessages.upperBodyTitle,
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20, top: 10),
              child: Column(
                children: [
                  ...EvaluationFormMessages.upperBodyInstructions.map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: ACDABulletListTextWD(reqs: [BulletListReqModel(content: e)]),
                    ),
                  ),
                  const SizedBox(height: 25),
                  EvaluationFormAssets.tutorialUpperBodyMale,
                  const SizedBox(height: 25),
                  EvaluationFormAssets.tutorialUpperBodyFemale,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
