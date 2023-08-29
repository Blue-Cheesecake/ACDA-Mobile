import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../domain/domain.dart';

class EvaluationResultPage extends StatelessWidget {
  const EvaluationResultPage({required this.result, Key? key}) : super(key: key);

  final IEvaluationResultEntity result;

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
        child: Text(result.isPassed.toString()),
      ),
    );
  }
}
