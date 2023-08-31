import 'package:flutter/material.dart';

import '../../../../../config/config.dart';
import '../../../../../utils/utils.dart';
import '../../../utils/utils.dart';

class MaleGuidelineWD extends StatelessWidget {
  const MaleGuidelineWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 35),
            child: LayoutBuilder(
              builder: (context, constraints) => Container(
                height: 380,
                width: constraints.maxWidth * 0.90,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: DesignSystem.g28,
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 13,
                  horizontal: 16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        DashboardMessages.male,
                        style: TextStyles.header5.copyWith(color: DesignSystem.acdaPrimary),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ...DashboardMessages.maleGuideline.map(
                      (e) => Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          width: 185,
                          child: ACDABulletListTextWD(
                            reqs: e,
                            bulletStyle: TextStyles.bodyText4,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        DashboardAssets.suitableDressMale,
      ],
    );
  }
}
