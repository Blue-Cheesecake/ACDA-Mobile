import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../central/logic/logic.dart';
import 'evaluation_form/evaluation_form_page.dart';
import 'evaluation_result/evaluation_result_page.dart';
import 'logic/logic.dart';

class EvaluationPageMain extends ConsumerWidget {
  const EvaluationPageMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isOnResult = ref.watch(centralStateProvider.select((value) => value.isOnResult));

    if (isOnResult) {
      return EvaluationResultPage(
        completedSaveModel: ref.watch(evaluationResultSaveProvider.select((value) => value.saveResultRequest))!,
      );
    }

    return const EvaluationFormPage();
  }
}
