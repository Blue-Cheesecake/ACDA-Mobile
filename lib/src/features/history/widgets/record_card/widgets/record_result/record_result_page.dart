import 'package:flutter/material.dart';

import '../../../../../../keys/keys.dart';
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
          key: HistoryPageKeys.backButtonFromCardPageWD,
          onPressed: () {
            ACDANavigation.instance.pop();
          },
        ),
      ),
      body: ACDAGradientBackgroundWD(
        width: double.infinity,
        child: ACDAEvaluationResultWD(date: data.addedAt, result: data.result),
      ),
    );
  }
}
