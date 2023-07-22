import 'package:flutter/material.dart';

import '../../../../utils/utils.dart';
import 'widgets/widgets.dart';

class NormalStateWD extends StatelessWidget {
  const NormalStateWD({Key? key, required this.data}) : super(key: key);

  final List<ICommonRecordEntity> data;

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 14, right: 14, top: 16, bottom: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SearchRecordWD(),
              SizedBox(height: 16),
              FilterSectionWD(),
            ],
          ),
        )
      ],
    );
  }
}
