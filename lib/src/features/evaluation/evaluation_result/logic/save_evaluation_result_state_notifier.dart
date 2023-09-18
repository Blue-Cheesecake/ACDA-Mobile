import '../../../../utils/utils.dart';
import '../../data/data.dart';
import '../domain/domain.dart';
import 'logic.dart';

class SaveEvaluationResultStateNotifier extends ACDAStateNotifier<SaveEvaluationResultState> {
  SaveEvaluationResultStateNotifier({required this.saveEvaluationResultUseCase})
      : super(SaveEvaluationResultState.initial());

  final SaveEvaluationResultUseCase saveEvaluationResultUseCase;

  Future<void> saveResult({required final SaveResultRequestModel requestModel}) async {
    safeState = SaveEvaluationResultState.loading();
    final response = await saveEvaluationResultUseCase.execute(requestModel);

    response.when(
      success: (data) {
        safeState = SaveEvaluationResultState.success();
      },
      error: (error) {
        safeState = SaveEvaluationResultState.error();
      },
    );
  }
}
