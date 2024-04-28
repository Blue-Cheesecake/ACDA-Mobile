import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../config/config.dart';
import '../../../../../core/core.dart';
import '../../../../../utils/utils.dart';
import '../../logic/logic.dart';
import '../utils.dart';

class EvaluationFormCardWD extends ConsumerStatefulWidget {
  const EvaluationFormCardWD({
    required this.currentLevel,
    required this.totalCard,
    required this.onImageSelected,
    required this.isImageFilled,
    required this.onFormSelected,
    required this.formField,
    required this.title,
    required this.description,
    required this.currentSelectedFormField,
    required this.currentImage,
    required this.backgroundColor,
    required this.cameraSection,
    this.prevField,
    this.nextField,
    this.shouldShrink = false,
    this.isLast = false,
    this.popupWDChild,
    Key? key,
  }) : super(key: key);

  final String title;
  final String description;
  final XFile? currentImage;
  final void Function(XFile? selectedImage) onImageSelected;
  final void Function() onFormSelected;
  final bool isImageFilled;
  final bool shouldShrink;
  final int currentLevel;
  final bool isLast;
  final int totalCard;
  final EvaluationFormField currentSelectedFormField;
  final EvaluationFormField formField;
  final EvaluationFormField? prevField;
  final EvaluationFormField? nextField;
  final Color backgroundColor;
  final Widget Function(VoidCallback removeOverlay)? popupWDChild;
  final CameraSection cameraSection;

  static const double borderRadius = 20;

  @override
  ConsumerState<EvaluationFormCardWD> createState() => _EvaluationFormCardWDState();
}

class _EvaluationFormCardWDState extends ConsumerState<EvaluationFormCardWD> with IACDAOverlayCreator {
  double? _formHeight;

  @override
  void initState() {
    super.initState();
    if (widget.shouldShrink) {
      _formHeight = 70.0 + (35.0 * (widget.totalCard - widget.currentLevel));
    }
  }

  @override
  Widget build(BuildContext context) {
    return ACDAEventSubscriberWD<SelectEvaluationFormFieldEvent>(
      callbackfn: (event) {
        if (!widget.shouldShrink) {
          return;
        }
        setState(() {
          if (widget.currentLevel > event.level) {
            _formHeight = 70.0 + (35.0 * (widget.totalCard - widget.currentLevel));
          } else {
            _formHeight = null;
          }
        });
      },
      child: LayoutBuilder(
        builder: (context, constraints) {
          final maxHeight = constraints.maxHeight;

          return AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            height: _formHeight ?? maxHeight,
            curve: Curves.easeInOutSine,
            child: Padding(
              padding: const EdgeInsets.only(left: 14),
              child: GestureDetector(
                onPanUpdate: (details) {
                  if (details.delta.dy > 0 &&
                      widget.prevField != null &&
                      widget.formField == widget.currentSelectedFormField) {
                    ref.read(evaluationFormInputStateProvider.notifier).updateCurrentField(widget.prevField!);
                    ACDAEventBus.instance.fire(SelectEvaluationFormFieldEvent(
                      level: widget.currentLevel - 1,
                      formField: widget.prevField!,
                    ));
                  }

                  if (widget.isLast) {
                    return;
                  }

                  if (details.delta.dy < 0 &&
                      widget.nextField != null &&
                      widget.formField == widget.currentSelectedFormField) {
                    ref.read(evaluationFormInputStateProvider.notifier).updateCurrentField(widget.nextField!);
                    ACDAEventBus.instance.fire(SelectEvaluationFormFieldEvent(
                      level: widget.currentLevel + 1,
                      formField: widget.nextField!,
                    ));
                  }
                },
                onTap: () {
                  ref.read(evaluationFormInputStateProvider.notifier).updateCurrentField(widget.formField);
                  widget.onFormSelected();
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 210,
                          height: 49,
                          decoration: BoxDecoration(
                            color: widget.backgroundColor,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(EvaluationFormCardWD.borderRadius),
                              topRight: Radius.circular(EvaluationFormCardWD.borderRadius),
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  _Status(isFilled: widget.isImageFilled),
                                  const SizedBox(width: 7),
                                  Text(
                                    widget.title,
                                    style: TextStyles.bodyText2Bold.copyWith(
                                      color: DesignSystem.g1,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ClipPath(
                          clipper: _ClipHalfQuad(),
                          child: Container(
                            width: 25,
                            height: 25,
                            color: widget.backgroundColor,
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(left: 10, right: 10, top: 12),
                        decoration: BoxDecoration(
                          color: widget.backgroundColor,
                        ),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: DesignSystem.g1,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(EvaluationFormCardWD.borderRadius),
                              topRight: Radius.circular(EvaluationFormCardWD.borderRadius),
                            ),
                          ),
                          padding: const EdgeInsets.only(left: 18, right: 18, top: 31),
                          child: widget.currentSelectedFormField == widget.formField
                              ? SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 12),
                                        child: Text(
                                          widget.description,
                                          style: TextStyles.bodyText6.copyWith(
                                            color: DesignSystem.g6,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 27),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 12),
                                        child: EvaluationImageBoxWD(
                                          currentImage: widget.currentImage,
                                          onImageSelected: widget.onImageSelected,
                                          currentLevel: widget.currentLevel,
                                          nextField: widget.nextField,
                                          cameraSection: widget.cameraSection,
                                        ),
                                      ),
                                      const SizedBox(height: 21),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          if (widget.popupWDChild != null)
                                            Padding(
                                              padding: const EdgeInsets.only(left: 15),
                                              child: ACDAHelperButtonWd(
                                                onTap: () => displayOverlay(
                                                  context: context,
                                                  child: widget.popupWDChild!(removeOverlay),
                                                ),
                                              ),
                                            ),
                                          if (!widget.isLast) const SwipableTabDisplayWD(),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              : const SizedBox.shrink(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _Status extends StatelessWidget {
  const _Status({required this.isFilled});

  final bool isFilled;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      padding: const EdgeInsets.all(1),
      decoration: const BoxDecoration(shape: BoxShape.circle, color: DesignSystem.g1),
      child: Container(
        decoration: BoxDecoration(
          color: isFilled ? DesignSystem.g8 : DesignSystem.acdaPrimary,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

class _ClipHalfQuad extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.quadraticBezierTo(0, size.height, 0, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}
