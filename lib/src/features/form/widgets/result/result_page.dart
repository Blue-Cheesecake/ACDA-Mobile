import 'package:acda_mobile/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../logic/logic.dart';
import 'logic/logic.dart';
import 'widgets/widgets.dart';

class ResultPage extends ConsumerStatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends ConsumerState<ResultPage> {
  @override
  void initState() {
    super.initState();

    final formInputState = ref.read(formInputProvider);

    ref.read(detectionResultStateProvider.notifier).getDetectionResult(
          bodyImage: formInputState.bodyImageBytes.tryGetValue(),
          bottomImage: formInputState.bottomImageBytes.tryGetValue(),
          shoesImage: formInputState.shoesImageBytes.tryGetValue(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ref.watch(detectionResultStateProvider).when(
        initial: () {
          return const Center(child: CircularProgressIndicator());
        },
        data: (data) {
          if (data.isPassed) {
            return _ResultPageLayout(resultWidget: const PassedWD(), data: data);
          }
          return _ResultPageLayout(resultWidget: const FailedWD(), data: data);
        },
        error: () {
          return const Center(child: Text('Error'));
        },
      ),
    );
  }
}

class _ResultPageLayout extends StatelessWidget {
  const _ResultPageLayout({required this.resultWidget, required this.data});

  final Widget resultWidget;
  final ICommonDetectionResultEntity data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: resultWidget),
        const SizedBox(height: 155),
        DoneButtonWD(data: data),
      ],
    );
  }
}
