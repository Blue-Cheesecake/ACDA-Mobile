import 'package:flutter/material.dart';

import '../../config/config.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          FormMessages.screenTitle,
          style: TextStyles.header5.copyWith(color: DesignSystem.g1),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 14, right: 14, top: 18),
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
