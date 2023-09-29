import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/utils.dart';
import '../../domain/domain.dart';
import '../logic.dart';

class BasicInfoStateNotifier extends ACDAStateNotifier<BasicInfoState> {
  BasicInfoStateNotifier({required this.ref, required this.getBasicInfoUseCase}) : super(BasicInfoState.initial());

  final Ref ref;
  final GetBasicInfoUseCase getBasicInfoUseCase;

  Future<void> fetchBasicInfo() async {
    final response = await getBasicInfoUseCase.execute(null);

    response.when(
      success: (data) {
        safeState = BasicInfoState.data(data: data);
        ref.read(basicInfoDataStateProvider.notifier).updateFromEntity(data);
      },
      error: (_) {
        safeState = BasicInfoState.error();
      },
    );
  }
}
