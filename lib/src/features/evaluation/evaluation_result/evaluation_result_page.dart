import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../central/logic/logic.dart';
import '../data/data.dart';

class EvaluationResultPage extends ConsumerWidget {
  const EvaluationResultPage({required this.completedSaveModel, Key? key}) : super(key: key);

  final SaveResultRequestModel completedSaveModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            ref.read(centralStateProvider.notifier).updateIsOnResult(false);
            ref.read(centralStateProvider.notifier).animateToHomePage();
          },
        ),
      ),
      body: Center(
        child: Text(completedSaveModel.result.isPassed.toString()),
      ),
    );
  }
}
