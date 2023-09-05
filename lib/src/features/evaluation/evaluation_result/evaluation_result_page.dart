import 'package:flutter/material.dart';

import '../../../core/core.dart';
import 'data/data.dart';

class EvaluationResultPage extends StatelessWidget {
  const EvaluationResultPage({required this.completedSaveModel, Key? key}) : super(key: key);

  final SaveResultRequestModel completedSaveModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            ACDANavigation.instance.go(RoutePath.central);
          },
        ),
      ),
      body: Center(
        child: Text(completedSaveModel.result.isPassed.toString()),
      ),
    );
  }
}
