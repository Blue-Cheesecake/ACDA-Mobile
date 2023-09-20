import 'package:flutter/material.dart';

import '../../../../../../utils/utils.dart';
import '../../../../../../core/core.dart';
import '../../../../domain/domain.dart';

class RecordResultPage extends StatelessWidget {
  const RecordResultPage({required this.data, Key? key}) : super(key: key);

  final IEvaluationRecordEntity data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            ACDANavigation.instance.pop();
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(data.addedAt.resultDate),
            Text(data.addedAt.timeM),
            Text(data.result.isPassed.toString()),
            Text(data.result.message ?? '-'),
          ],
        ),
      ),
    );
  }
}
