import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/core.dart';
import '../../../../utils/utils.dart';
import '../../data/data.dart';
import '../../domain/domain.dart';
import '../logic.dart';

final evaluationRepositoryProvider = Provider.autoDispose<IEvaluationRepository>((ref) {
  return EvaluationRepository(dataSource: EvaluationRetrofitDataSource(dio: DioClient.client));
});

final evaluateUseCaseProvider = Provider.autoDispose<EvaluateUseCase>((ref) {
  final repository = ref.watch(evaluationRepositoryProvider);
  return EvaluateUseCase(repository: repository);
});

Future<Result<IEvaluationResultEntity, AnyException>> evaluate({required WidgetRef ref}) async {
  final evaluateUseCase = ref.read(evaluateUseCaseProvider);

  final XFile? fullBodyImageFile =
      ref.read(evaluationFormInputStateProvider.select((value) => value.fullBodyImageFile));
  final XFile? upperBodyImageFile =
      ref.read(evaluationFormInputStateProvider.select((value) => value.upperBodyImageFile));
  final XFile? studentIdCardImageFile =
      ref.read(evaluationFormInputStateProvider.select((value) => value.studentIdCardImageFile));

  final fullBodyImageBytes = await fullBodyImageFile!.readAsBytes();
  final upperBodyImageBytes = await upperBodyImageFile!.readAsBytes();
  final studentIdCardImageBytes = await studentIdCardImageFile!.readAsBytes();

  final response = await evaluateUseCase.execute(EvaluationRequestModel(
    fullBodyImage: base64Encode(fullBodyImageBytes),
    upperBodyImage: base64Encode(upperBodyImageBytes),
    studentIdCardImage: base64Encode(studentIdCardImageBytes),
  ));

  return response;
}
