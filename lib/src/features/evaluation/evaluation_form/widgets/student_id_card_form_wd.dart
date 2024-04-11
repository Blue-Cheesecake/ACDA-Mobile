import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StudentIdCardFormWD extends ConsumerWidget {
  const StudentIdCardFormWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container();
    // return Align(
    //   alignment: Alignment.bottomCenter,
    //   child: Padding(
    //     padding: const EdgeInsets.only(top: 107),
    //     child: EvaluationFormCardWD(
    //       title: EvaluationFormMessages.studentIdCardTitle,
    //       description: EvaluationFormMessages.studentIdCardDescription,
    //       onFormSelected: () => ACDAEventBus.instance.fire(
    //         SelectEvaluationFormFieldEvent(level: 3, formField: EvaluationFormField.studentIdCard),
    //       ),
    //       prevField: EvaluationFormField.upperBody,
    //       formField: EvaluationFormField.studentIdCard,
    //       currentSelectedFormField: ref.watch(evaluationFormInputStateProvider.select((value) => value.currentField)),
    //       totalCard: EvaluationFormMessages.totalCards,
    //       currentLevel: 3,
    //       currentImage: ref.watch(evaluationFormInputStateProvider.select((value) => value.studentIdCardImageFile)),
    //       backgroundColor: DesignSystem.g26,
    //       onImageSelected: (XFile? selectedImage) {
    //          ref.read(evaluationFormInputStateProvider.notifier).updateStudentIdCardImageFile(selectedImage);
    //       },
    //       isImageFilled: ref.watch(
    //         evaluationFormStatusStateProvider.select((value) => value.isStudentIdCardImageFilled),
    //       ),
    //       shouldShrink: true,
    //       isLast: true,
    //       popupWDChild: (removeOverlay) => ACDAHelperPopupWD(
    //         removeOverlay: removeOverlay,
    //         mainTitle: EvaluationFormMessages.tutorialTitle,
    //         subtitle: EvaluationFormMessages.studentIdCardTitle,
    //         child: Padding(
    //           padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20, top: 10),
    //           child: Column(
    //             children: [
    //               Text(
    //                 EvaluationFormMessages.studentIdCardInstruction,
    //                 style: TextStyles.bodyText6.copyWith(color: DesignSystem.g6, fontWeight: FontWeight.w500),
    //               ),
    //               const SizedBox(height: 25),
    //               EvaluationFormAssets.tutorialStudentIdCard,
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
