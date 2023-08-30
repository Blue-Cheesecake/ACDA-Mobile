import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class HomeHeaderWD extends StatelessWidget {
  const HomeHeaderWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 97,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: ProfileWD(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Align(
              alignment: Alignment.bottomRight,
              child: EmotionDateWD(),
            ),
          )
        ],
      ),
    );
  }
}
