import 'package:flutter/material.dart';

import '../utils/utils.dart';
import 'get_started_button_wd.dart';

class EmptyStateWD extends StatelessWidget {
  const EmptyStateWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 86),
        DashboardAssets.gettingStartedImageAsset,
        const SizedBox(height: 29),
        const Center(child: GetStartedButtonWD()),
      ],
    );
  }
}
