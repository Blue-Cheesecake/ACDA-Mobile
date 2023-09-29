import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/config.dart';
import '../../../logic/logic.dart';
import '../../../utils/utils.dart';
import 'widgets.dart';

class ProfileWD extends StatelessWidget {
  const ProfileWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth * 0.77;

        return Container(
          padding: const EdgeInsets.only(top: 11, bottom: 11, left: 20),
          width: width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),
            color: DesignSystem.g1,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              DashboardAssets.muLogo,
              const SizedBox(width: 10),
              Consumer(builder: (_, ref, __) {
                String name = ref.watch(basicInfoDataStateProvider.select((value) => value.name));
                String faculty = ref.watch(basicInfoDataStateProvider.select((value) => value.faculty));

                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(name, style: TextStyles.header5),
                    Text(
                      faculty,
                      style: TextStyles.bodyText4,
                    ),
                    const LogoutButtonWd(),
                  ],
                );
              })
            ],
          ),
        );
      },
    );
  }
}
