import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../../../utils/utils.dart';
import '../../central/logic/logic.dart';
import '../data/data.dart';
import 'logic/logic.dart';

class EvaluationResultPage extends ConsumerWidget {
  const EvaluationResultPage({required this.completedSaveModel, Key? key}) : super(key: key);

  final SaveResultRequestModel completedSaveModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(saveEvaluationResultStateProvider).whenOrNull(
      loading: () {
        if (context.mounted) {
          context.loaderOverlay.show(widget: ACDALoadingWD.withScaffold());
        }
      },
    );

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              completedSaveModel.result.isPassed.toString(),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () async {
                await ref.read(saveEvaluationResultStateProvider.notifier).saveResult(
                      requestModel: completedSaveModel,
                      onSuccessCallback: () {
                        context.loaderOverlay.hide();
                        ref.read(centralStateProvider.notifier).updateIsOnResult(false);
                        ref.read(centralStateProvider.notifier).animateToHomePage();
                      },
                      onErrorCallback: () {
                        if (context.mounted) {
                          context.loaderOverlay.hide();
                        }
                      },
                    );
              },
              child: const Text('Save'),
            ),
          )
        ],
      ),
    );
  }
}
