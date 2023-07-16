import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'domain/domain.dart';
import 'logic/logic.dart';
import 'widgets/widgets.dart';

class ResultPage extends ConsumerStatefulWidget {
  const ResultPage({Key? key, required this.formInput}) : super(key: key);

  final Map<String, Uint8List> formInput;

  @override
  ConsumerState<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends ConsumerState<ResultPage> {
  @override
  void initState() {
    super.initState();
    ref.read(detectionResultStateProvider.notifier).getDetectionResult(
          bodyImage: widget.formInput['bodyImage'] ?? Uint8List(0),
          bottomImage: widget.formInput['bottomImage'] ?? Uint8List(0),
          shoesImage: widget.formInput['shoesImage'] ?? Uint8List(0),
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
        data: (IDetectionResultEntity data) {
          if (data.isPassed) {
            return const _ResultPageLayout(result: PassedWD());
          }
          return const _ResultPageLayout(result: FailedWD());
        },
        error: () {
          return const Center(child: Text('Error'));
        },
      ),
    );
  }
}

class _ResultPageLayout extends StatelessWidget {
  const _ResultPageLayout({required this.result});

  final Widget result;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: result),
        const SizedBox(height: 155),
        const DoneButtonWD(),
      ],
    );
  }
}
