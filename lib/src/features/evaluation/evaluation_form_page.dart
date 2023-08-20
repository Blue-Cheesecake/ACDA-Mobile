import 'package:flutter/material.dart';

import '../../config/config.dart';
import 'widgets/widgets.dart';

class EvaluationFormPage extends StatelessWidget {
  const EvaluationFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: Container(
        margin: EdgeInsets.zero,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: DesignSystem.acdaPrimary,
        ),
        child: const Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(padding: EdgeInsets.only(right: 13), child: FormStatusWD()),
            ),
          ],
        ),
      ),
    );
  }
}
