import 'package:flutter/material.dart';

import '../../config/config.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class EvaluationFormPage extends StatelessWidget {
  const EvaluationFormPage({Key? key}) : super(key: key);

  static const totalCards = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(EvaluationFormMessages.title, style: TextStyles.header5.copyWith(color: DesignSystem.g1)),
      ),
      body: Container(
        margin: EdgeInsets.zero,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              DesignSystem.acdaPrimary,
              DesignSystem.g23,
              DesignSystem.g21,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: <double>[
              0.4,
              0.7,
              1.0,
            ],
          ),
        ),
        child: const Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(padding: EdgeInsets.only(top: 10, right: 12), child: FormStatusWD()),
            ),
            FullBodyFormWD(),
            UpperBodyFormWD(),
            StudentIdCardFormWD(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: EvaluationSubmitButtonWD(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
