import 'dart:convert';
import 'dart:ui';
import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/config.dart';
import '../../../../core/core.dart';
import '../../../../utils/utils.dart';
import '../../evaluation_result/data/data.dart';
import '../../logic/logic.dart';
import '../../utils/utils.dart';

class EvaluationSubmitButtonWD extends ConsumerWidget {
  const EvaluationSubmitButtonWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isEnabled = ref.watch(evaluationFormInputStateProvider.select((value) => value.isSubmitButtonEnabled));

    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(31)),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInOut,
        height: isEnabled ? 100 : 0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: DesignSystem.g6.withOpacity(0.5),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(31)),
        ),
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(left: 13, right: 13, top: 13),
            child: Stack(
              children: [
                LayoutBuilder(
                  builder: (context, constraints) => SizedBox(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                      child: Container(color: DesignSystem.g1.withOpacity(0.0)),
                    ),
                  ),
                ),
                Consumer(
                  builder: (_, ref, __) {
                    return Align(
                      alignment: Alignment.topCenter,
                      child: ActionSlider.custom(
                        sliderBehavior: SliderBehavior.move,
                        height: 43,
                        action: (controller) async {
                          controller.loading();
                          final response = await evaluate(ref: ref);

                          response.when(
                            success: (data) async {
                              controller.success();
                              await Future.delayed(const Duration(seconds: 1, milliseconds: 100));
                              final String fullBodyBase64 = base64Encode(await ref
                                  .read(evaluationFormInputStateProvider.select((value) => value.fullBodyImageFile))!
                                  .readAsBytes());
                              final String upperBodyBase64 = base64Encode(await ref
                                  .read(evaluationFormInputStateProvider.select((value) => value.upperBodyImageFile))!
                                  .readAsBytes());
                              final String studentIdCardBase64 = base64Encode(await ref
                                  .read(
                                      evaluationFormInputStateProvider.select((value) => value.studentIdCardImageFile))!
                                  .readAsBytes());

                              final requestModel = SaveResultRequestModel(
                                fullBodyimage: fullBodyBase64,
                                upperBodyImage: upperBodyBase64,
                                studentIdCardImage: studentIdCardBase64,
                                result: CommonEvaluationResultModel.fromEntity(data),
                              );

                              ACDANavigation.instance.go(
                                RoutePath.result,
                                extra: requestModel,
                              );
                            },
                            error: (error) {
                              controller.failure();
                            },
                          );
                        },
                        toggleWidth: 70,
                        foregroundBuilder: (_, actionsSliderState, __) {
                          Widget? child;

                          switch (actionsSliderState.sliderMode) {
                            case SliderMode.loading:
                              child = const ACDALoadingWD();
                            case SliderMode.success:
                              child = const Icon(Icons.check, color: DesignSystem.g8);
                            case SliderMode.failure:
                              child = const Icon(Icons.close, color: DesignSystem.g9);
                            default:
                          }
                          return Container(
                            height: double.infinity,
                            decoration: const BoxDecoration(
                              color: DesignSystem.g1,
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            child: child,
                          );
                        },
                        backgroundColor: DesignSystem.g6,
                        backgroundBuilder: (_, actionSliderState, child) {
                          return Center(
                            child: Text(
                              EvaluationFormMessages.swipeToSubmit,
                              style: TextStyles.bodyText4Bold.copyWith(color: DesignSystem.g1),
                            ),
                          );
                        },
                        outerBackgroundBuilder: (_, actionsSliderState, __) {
                          Color? bgColor;

                          switch (actionsSliderState.sliderMode) {
                            case SliderMode.success:
                              bgColor = DesignSystem.g8;
                            case SliderMode.failure:
                              bgColor = DesignSystem.g9;
                            default:
                          }
                          return Container(
                            height: 43,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: bgColor == null
                                  ? const LinearGradient(
                                      colors: [
                                        DesignSystem.g6,
                                        DesignSystem.g11,
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    )
                                  : null,
                              color: bgColor,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: DesignSystem.g22, width: 2),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
