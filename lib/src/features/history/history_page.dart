import 'package:flutter/material.dart';

import '../../config/config.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'History Page',
        style: TextStyles.bodyText2Bold.copyWith(color: DesignSystem.g1),
      ),
    );
  }
}
