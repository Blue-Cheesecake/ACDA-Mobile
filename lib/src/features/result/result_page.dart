import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'logic/logic.dart';

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
        data: (data) {
          return const Center(child: Text('got data'));
        },
        error: () {
          return const Center(child: Text('Error'));
        },
      ),
    );
  }
}
