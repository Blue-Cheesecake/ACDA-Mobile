import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/config.dart';
import '../../utils/utils.dart';
import 'logic/logic.dart';
import 'utils/constants/page_sequence.dart';

class CentralPage extends ConsumerStatefulWidget {
  const CentralPage({this.initialIndex, Key? key}) : super(key: key);

  final int? initialIndex;

  @override
  ConsumerState<CentralPage> createState() => _CentralPageState();
}

class _CentralPageState extends ConsumerState<CentralPage> with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(initialIndex: widget.initialIndex ?? 1, length: PageSequence.sequence.length, vsync: this);
    _pageController = PageController(initialPage: widget.initialIndex ?? 1);

    SchedulerBinding.instance.addPostFrameCallback((_) {
      ref.read(centralStateProvider.notifier).initiazlieTabController(_tabController);
      ref.read(centralStateProvider.notifier).initializePageController(_pageController);
    });
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
      child: AnnotatedRegion(
        value: SystemUiOverlayStyle.light,
        child: Scaffold(
          body: ACDAGradientBackgroundWD(
            child: SafeArea(
              child: PageView.builder(
                controller: _pageController,
                itemCount: PageSequence.sequence.length,
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
              ),
            ),
          ),
          bottomNavigationBar: ConvexAppBar(
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
