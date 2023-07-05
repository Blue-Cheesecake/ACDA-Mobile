import 'package:flutter/material.dart';

import '../utils/utils.dart';

class ShoesSectionWD extends StatelessWidget {
  const ShoesSectionWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormInputSectionWD(
      title: FormMessages.shoesSectionTitle,
      isValidImageFN: (image) {
        return true;
      },
    );
  }
}
