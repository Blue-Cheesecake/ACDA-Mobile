import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/config.dart';
import '../../core/core.dart';
import '../../utils/utils.dart';
import 'logic/logic.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class FormPage extends ConsumerWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          FormMessages.screenTitle,
          style: TextStyles.header5.copyWith(color: DesignSystem.g1),
        ),
        leading: BackButton(
          style: ButtonStyles.backButtonStyle,
          onPressed: () {
            final isThereAnyData = ref.read(formInputProvider.select((value) => value.isThereAnyData));
            if (isThereAnyData) {
              // show popup
              showACDAPopupFN(context: context, popup: const BackPopupWD());
            } else {
              ACDANavigation.instance.pop();
            }
          },
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
    );
  }
}
