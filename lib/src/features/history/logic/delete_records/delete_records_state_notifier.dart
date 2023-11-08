import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/utils.dart';
import '../../domain/domain.dart';
import '../logic.dart';

class DeleteRecordsStateNotifier extends ACDAStateNotifier<DeleteRecordsState> {
  DeleteRecordsStateNotifier({
    required final Ref ref,
    required final DeleteSomeRecordsUseCase deleteSomeRecordsUseCase,
  })  : _ref = ref,
        _deleteSomeRecordsUseCase = deleteSomeRecordsUseCase,
        super(DeleteRecordsState.initial());

  final Ref _ref;

  final DeleteSomeRecordsUseCase _deleteSomeRecordsUseCase;

  Future<void> deleteSomeRecords() async {
    safeState = DeleteRecordsState.loading();
    final requestModel = _ref.read(historyInputStateProvider.select((value) => value.deleteRequestParams));
    final response = await _deleteSomeRecordsUseCase.execute(requestModel);

    response.when(
      success: (_) {
        safeState = DeleteRecordsState.success();
        _ref.read(historyModeStateProvider.notifier).leaveDeletingMode();
        _ref.read(getRecordsStateProvider.notifier).fetchRecords();
      },
      error: (_) {
        safeState = DeleteRecordsState.error();
        _ref.read(historyModeStateProvider.notifier).leaveDeletingMode();
      },
    );
  }
}
