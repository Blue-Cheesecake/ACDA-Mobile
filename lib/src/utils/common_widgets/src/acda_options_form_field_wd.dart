import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../../utils.dart';

class ACDAOptionsFormFieldWD extends StatelessWidget {
  const ACDAOptionsFormFieldWD({
    required this.title,
    required this.list,
    required this.onSelectedValue,
    Key? key,
    this.selectedValue,
  }) : super(key: key);

  final String title;
  final String? selectedValue;
  final List<ICommonCategoryValueEntity> list;
  final void Function(ICommonCategoryValueEntity item) onSelectedValue;

  @override
  Widget build(BuildContext context) {
    Widget childContainer = const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox.shrink(),
        Icon(
          Icons.keyboard_arrow_down_rounded,
          color: DesignSystem.g5,
        ),
      ],
    );

    if (selectedValue != null) {
      childContainer = SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Text(
          selectedValue!,
          style: TextStyles.bodyText4,
        ),
      );
    }

    return InkWell(
      onTap: () {
        showACDABottomSheet(
          context: context,
          child: ACDAListBottomSheetWD(
            title: title,
            list: list,
            onSelectedValue: onSelectedValue,
            selectedValue: selectedValue,
          ),
        );
      },
      child: Container(
        height: 45,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            width: 1,
            color: DesignSystem.g10,
          ),
        ),
        child: childContainer,
      ),
    );
  }
}
