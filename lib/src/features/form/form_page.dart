import 'package:flutter/material.dart';

import '../../config/config.dart';
import 'utils/utils.dart';

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
    );
  }
}
