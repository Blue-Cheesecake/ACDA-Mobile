import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../config/config.dart';

class LoadingRecordWD extends StatelessWidget {
  const LoadingRecordWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28, left: 9, right: 9),
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: DesignSystem.g3,
            highlightColor: DesignSystem.g1,
            child: Container(
              width: double.infinity,
              height: 63,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(99),
                  right: Radius.circular(30),
                ),
                color: DesignSystem.g2,
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 12),
      ),
    );
  }
}
