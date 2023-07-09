import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../../config/config.dart';
import '../../utils/utils.dart';
import 'logic/logic.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class FormPage extends ConsumerWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(imageValidationProvider).when(
          initial: () {},
          loading: () {
            context.loaderOverlay.show();
          },
          data: (result) {
            context.loaderOverlay.hide();

            if (!result.isPassed) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                showACDAPopupFN(
                  context: context,
                  popup: ACDAAlertPopup(
                    title: FormMessages.invalidPopuptitle,
                    content: FormMessages.invalidPopupBody,
                    actions: [
                      CupertinoDialogAction(
                        isDestructiveAction: true,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(FormMessages.cancel),
                      ),
                    ],
                  ),
                );
              });
            }
          },
          error: () {
            context.loaderOverlay.hide();
          },
        );

    return ACDALoaderOverlayWD(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            FormMessages.screenTitle,
            style: TextStyles.header5.copyWith(color: DesignSystem.g1),
          ),
        ),
        floatingActionButton: const SubmitButtonWD(),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 14, right: 14, top: 18, bottom: 18),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                LabelTextFieldWD(),
                SizedBox(height: 24),
                BodySectionWD(),
                SizedBox(height: 18),
                BottomSectionWD(),
                SizedBox(height: 18),
                ShoesSectionWD(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
