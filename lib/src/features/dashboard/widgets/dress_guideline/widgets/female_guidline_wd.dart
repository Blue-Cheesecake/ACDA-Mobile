import 'package:flutter/material.dart';

import '../../../../../config/config.dart';
import '../../../../../utils/utils.dart';
import '../../../utils/utils.dart';

class FemaleGuidlineWD extends StatelessWidget {
  const FemaleGuidlineWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 35),
            child: LayoutBuilder(
              builder: (context, constraints) => Container(
                height: 355,
                width: constraints.maxWidth * 0.90,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(100),
                  ),
                  color: DesignSystem.g28,
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 13,
                  horizontal: 16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        DashboardMessages.female,
                        style: TextStyles.header5.copyWith(color: DesignSystem.acdaPrimary),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ...DashboardMessages.femaleGuideline.map(
                      (e) => Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: 175,
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
        Align(
          alignment: Alignment.centerRight,
          child: DashboardAssets.suitableDressFemale,
        )
      ],
    );
  }
}
