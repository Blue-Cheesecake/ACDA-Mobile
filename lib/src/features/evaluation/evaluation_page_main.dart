import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'evaluation_form/evaluation_form_page.dart';

class EvaluationPageMain extends ConsumerWidget {
  const EvaluationPageMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const EvaluationFormPage();
  }
}
