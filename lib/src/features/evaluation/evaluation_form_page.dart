import 'package:flutter/material.dart';

import '../../config/config.dart';
import '../../core/core.dart';
import '../../utils/utils.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class EvaluationFormPage extends StatefulWidget {
  const EvaluationFormPage({Key? key}) : super(key: key);

  static const totalCards = 3;

  @override
  State<EvaluationFormPage> createState() => _EvaluationFormPageState();
}

class _EvaluationFormPageState extends State<EvaluationFormPage> with IACDAOverlayCreator {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final isCalled = await ACDASecureStorage.instance.read(key: EvaluationFormConstant.didShowTutorialKey);
      if (context.mounted && (isCalled == null || isCalled == false.toString())) {
        displayOverlay(context: context, child: const EvaluationTutorialOverlayWD());
      }
    });
  }

  @override
  void onRemoveCallbackfn() {
    // tell the app that this user already read the tutorial
    ACDASecureStorage.instance.write(key: EvaluationFormConstant.didShowTutorialKey, value: true.toString());
  }

  @override
  void dispose() {
    removeOverlay();
    super.dispose();
  }

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
