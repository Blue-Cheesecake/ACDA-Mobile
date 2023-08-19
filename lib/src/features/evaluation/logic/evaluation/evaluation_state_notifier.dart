import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../utils/utils.dart';
import '../../data/data.dart';
import '../../domain/domain.dart';
import '../logic.dart';

class EvaluationStateNotifier extends ACDAStateNotifier<EvaluationState> {
  EvaluationStateNotifier({required this.ref, required this.evaluateUseCase}) : super(EvaluationState.initial());

  final Ref ref;
  final EvaluateUseCase evaluateUseCase;

  Future<void> evaluate() async {
    safeState = EvaluationState.loading();
    final XFile? fullBodyImageFile =
        ref.read(evaluationFormInputStateProvider.select((value) => value.fullBodyImageFile));
    final XFile? upperBodyImageFile =
        ref.read(evaluationFormInputStateProvider.select((value) => value.upperBodyImageFile));
    final XFile? studentIdCardImageFile =
        ref.read(evaluationFormInputStateProvider.select((value) => value.studentIdCardImageFile));

    final response = await evaluateUseCase.execute(EvaluationRequestModel(
      fullBodyImage: base64Encode(await fullBodyImageFile!.readAsBytes()),
      upperBodyImage: base64Encode(await upperBodyImageFile!.readAsBytes()),
      studentIdCardImage: base64Encode(await studentIdCardImageFile!.readAsBytes()),
    ));

    response.when(
      success: (data) {
        safeState = EvaluationState.data(result: data);
      },
      error: (error) {
        safeState = EvaluationState.error(exception: error);
      },
    );
  }
}
