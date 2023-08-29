import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/domain.dart';
import 'basic_info_data.dart';

class BasicInfoDataStateNotifier extends StateNotifier<BasicInfoDataState> {
  BasicInfoDataStateNotifier() : super(BasicInfoDataState());

  void updateName(String value) {
    state = state.copyWith(name: value);
  }

  void updateFaculty(String value) {
    state = state.copyWith(faculty: value);
  }

  void updateNumPassed(int value) {
    state = state.copyWith(numPassed: value);
  }

  void updateNumFailed(int value) {
    state = state.copyWith(numFailed: value);
  }

  void updateTotal(int value) {
    state = state.copyWith(total: value);
  }

  void updateFromEntity(IBasicInfoEntity basicInfoEntity) {
    state = BasicInfoDataState(
      name: basicInfoEntity.name,
      faculty: basicInfoEntity.faculty,
      numPassed: basicInfoEntity.evaluationResultHistoryNumber.numPassed,
      numFailed: basicInfoEntity.evaluationResultHistoryNumber.numFailed,
      total: basicInfoEntity.evaluationResultHistoryNumber.total,
    );
  }

  void clearState() {
    state = BasicInfoDataState();
  }
}
