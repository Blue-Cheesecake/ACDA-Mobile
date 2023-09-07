import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/utils.dart';
import '../../domain/domain.dart';
import '../logic.dart';

class GetRecordsStateNotifier extends ACDAStateNotifier<GetRecordsState> {
  GetRecordsStateNotifier({required this.ref, required this.getRecordsUseCase}) : super(GetRecordsState.initial());

  final Ref ref;
  final GetRecordsUseCase getRecordsUseCase;

  Future<void> fetchRecords() async {
    safeState = GetRecordsState.loading();
    final requestParams = ref.read(historyInputStateProvider.select((value) => value.getRequestParams));
    final response = await getRecordsUseCase.execute(requestParams);

    response.when(
      success: (data) {
        safeState = GetRecordsState.data(records: data);
      },
      error: (error) {
        safeState = GetRecordsState.error();
      },
    );
  }
}
