import 'package:flutter/material.dart';

import '../utils/utils.dart';

class BodySectionWD extends StatelessWidget {
  const BodySectionWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormInputSectionWD(
      title: FormMessages.bodySectiontitle,
      isValidImageFN: (image) {
        return true;
      },
    );
  }
}
