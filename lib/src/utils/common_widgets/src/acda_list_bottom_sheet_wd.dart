import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../../utils.dart';

class ACDAListBottomSheetWD extends StatelessWidget {
  const ACDAListBottomSheetWD({
    required this.title,
    required this.list,
    required this.onSelectedValue,
    Key? key,
    this.selectedValue,
  }) : super(key: key);

  final String title;
  final String? selectedValue;
  final void Function(ICommonCategoryValueEntity item) onSelectedValue;
  final List<ICommonCategoryValueEntity> list;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 37, right: 37, top: 25),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Text(title, style: TextStyles.header5.copyWith(color: DesignSystem.acdaPrimary)),
              ),
              const SizedBox(height: 10),
              Material(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    final itemValue = list[index].value;

                    return InkWell(
                      onTap: () {
                        onSelectedValue(list[index]);
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: selectedValue == itemValue ? DesignSystem.acdaPrimary.withOpacity(0.7) : null,
                        ),
                        child: Text(
                          itemValue,
                          style: TextStyles.bodyText4.copyWith(
                            color: itemValue != selectedValue ? DesignSystem.g0 : DesignSystem.g1,
                            fontWeight: itemValue != selectedValue ? FontWeight.normal : FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
