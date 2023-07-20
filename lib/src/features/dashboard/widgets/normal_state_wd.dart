import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class NormalStateWD extends StatelessWidget {
  const NormalStateWD({Key? key, required this.data}) : super(key: key);

  final List<ICommonRecordEntity> data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(data.length.toString()),
        const Placeholder(
          fallbackHeight: 200,
        ),
      ],
    );
  }
}
