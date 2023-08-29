import 'package:acda_mobile/src/features/central/logic/central_state_provider.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/config.dart';
import '../../utils/utils.dart';
import 'utils/constants/page_sequence.dart';

class CentralPage extends StatefulWidget {
  const CentralPage({Key? key}) : super(key: key);

  @override
  State<CentralPage> createState() => _CentralPageState();
}

class _CentralPageState extends State<CentralPage> with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 1, length: PageSequence.sequence.length, vsync: this);
    _pageController = PageController(initialPage: 1);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ACDAUnacceptedWifiEventListenerWD(
      child: Scaffold(
        body: ACDAGradientBackgroundWD(
          child: SafeArea(
            child: Consumer(builder: (context, ref, child) {
              return PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  _tabController.animateTo(
                    index,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                  );
                  ref.read(centralStateProvider.notifier).updateNotchColor(index: index);
                },
                itemBuilder: (context, index) {
                  return PageSequence.sequence[index].child;
                },
              );
            }),
          ),
        ),
        bottomNavigationBar: Consumer(
          builder: (context, ref, child) => ConvexAppBar(
            controller: _tabController,
            curve: Curves.easeInOut,
            items: PageSequence.sequence.map((e) => e.tabItem).toList(),
            onTap: (index) {
              _pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
              );
              ref.read(centralStateProvider.notifier).updateNotchColor(index: index);
            },
            backgroundColor: DesignSystem.acdaPrimary,
            activeColor: ref.watch(centralStateProvider.select((value) => value.notchColor)),
          ),
        ),
      ),
    );
  }
}
