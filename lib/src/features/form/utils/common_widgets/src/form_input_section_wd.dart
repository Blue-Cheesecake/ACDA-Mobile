import 'package:flutter/material.dart';

import '../../../../../config/config.dart';
import 'src.dart';

class FormInputSectionWD extends StatelessWidget {
  FormInputSectionWD({Key? key, required this.title, required this.isValidImageFN}) : super(key: key);

  final String title;

  // TODO: change String to ImageFile Later
  final bool Function(String image) isValidImageFN;

  // TODO: Use Logic of each section instead if we have more image feature
  final List<Widget> _imageForms = <Widget>[
    ImageFormWD(onTap: () {}),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.bodyText4Bold.copyWith(color: DesignSystem.g6),
        ),
        const SizedBox(height: 14),
        ..._imageForms,
      ],
    );
  }
}
