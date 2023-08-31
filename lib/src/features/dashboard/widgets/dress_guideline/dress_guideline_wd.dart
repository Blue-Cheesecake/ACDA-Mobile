import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../config/config.dart';
import '../../../../utils/utils.dart';
import '../../utils/utils.dart';
import 'widgets/widgets.dart';

class DressGuidelineWD extends StatefulWidget {
  const DressGuidelineWD({Key? key}) : super(key: key);

  @override
  State<DressGuidelineWD> createState() => _DressGuidelineWDState();
}

class _DressGuidelineWDState extends State<DressGuidelineWD> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 13),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(31)),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter, // Adjust this value to control the spread of the shadow
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Container(
                  height: 10, // Control the height to control how deep shadow goes
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.25), // Adjust opacity as needed
                        Colors.transparent,
                      ],
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, right: 19),
              child: CupertinoScrollbar(
                controller: _scrollController,
                child: ListView(
                  controller: _scrollController,
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.vertical,
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      DashboardMessages.howToDress,
                      style: TextStyles.bodyText4.copyWith(color: DesignSystem.acdaPrimary),
                    ),
                    const SizedBox(height: 15),
                    Stack(
                      children: [
                        Center(child: DashboardAssets.expectedDressBoth),
                        Positioned(
                          right: 48,
                          child: Text(
                            ACDACommonMessages.ictFaculty,
                            style: TextStyles.header5.copyWith(color: DesignSystem.acdaPrimary, shadows: [
                              Shadow(
                                color: DesignSystem.g0.withOpacity(0.25),
                                offset: const Offset(0, 2),
                                blurRadius: 6.0,
                              )
                            ]),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const MaleGuidelineWD(),
                    const SizedBox(height: 20),
                    const FemaleGuidlineWD(),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
