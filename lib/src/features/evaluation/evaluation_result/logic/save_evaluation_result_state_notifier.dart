import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/utils.dart';
import '../../data/data.dart';
import '../domain/domain.dart';
import 'logic.dart';

class SaveEvaluationResultStateNotifier extends ACDAStateNotifier<SaveEvaluationResultState> {
  SaveEvaluationResultStateNotifier({required this.ref, required this.saveEvaluationResultUseCase})
      : super(SaveEvaluationResultState.initial());

  final Ref ref;
  final SaveEvaluationResultUseCase saveEvaluationResultUseCase;

  Future<void> saveResult({
    required final SaveResultRequestModel requestModel,
    final VoidCallback? onSuccessCallback,
    final VoidCallback? onErrorCallback,
  }) async {
    safeState = SaveEvaluationResultState.loading();

    final response = await saveEvaluationResultUseCase.execute(requestModel);

    response.when(
      success: (data) {
        safeState = SaveEvaluationResultState.success();
        if (onSuccessCallback != null) onSuccessCallback();
      },
      error: (error) {
        safeState = SaveEvaluationResultState.error();
        if (onErrorCallback != null) onErrorCallback();
      },
    );
  }
}
