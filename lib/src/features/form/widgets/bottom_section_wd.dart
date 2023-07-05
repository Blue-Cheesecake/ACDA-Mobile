import 'package:flutter/material.dart';

import '../utils/utils.dart';

class BottomSectionWD extends StatelessWidget {
  const BottomSectionWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormInputSectionWD(
      title: FormMessages.bottomSectionTitle,
      isValidImageFN: (image) {
        return true;
      },
    );
  }
}
