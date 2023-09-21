import 'package:camera/camera.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/core.dart';
import '../utils/utils.dart';
import 'logic.dart';

class ACDATimerCameraStateNotifier extends StateNotifier<ACDATimerCameraState> {
  ACDATimerCameraStateNotifier()
      : super(ACDATimerCameraState(cameraDescription: ACDACameraDescription.cameraOptions.first));

  void switchCameraOption() {
    if (state.cameraDescription?.name == ACDACameraDescription.cameraOptions.first.name) {
      state = state.copyWith(
        cameraDescription: ACDACameraDescription.cameraOptions[1],
        isSwitching: true,
        pickedImage: null,
      );
      return;
    }
    state = state.copyWith(
      cameraDescription: ACDACameraDescription.cameraOptions.first,
      isSwitching: true,
      pickedImage: null,
    );
  }

  void updateIsSwitching(bool value) {
    state = state.copyWith(isSwitching: value);
  }

  void clearStateOnDispose() {
    state = state.copyWith(pickedImage: null, counter: 0, timerOption: TimerOption.none, isStartCounting: false);
  }

  void updatePickedImage(XFile? value) {
    state = state.copyWith(pickedImage: value);
  }

  Future<void> startCounting({required int counting, required CameraController cameraController}) async {
    state = state.copyWith(isStartCounting: true, counter: counting);

    int c = counting;
    while (c > 0) {
      await Future.delayed(const Duration(seconds: 1));
      c--;
      state = state.copyWith(counter: c);
    }

    try {
      final XFile image = await cameraController.takePicture();
      updatePickedImage(image);
    } catch (e) {
      ACDALog.printDebug(message: e.toString());
    }

    stopCounting();
  }

  void stopCounting() {
    state = state.copyWith(isStartCounting: false, counter: 0);
  }

  void updateTimerOptionFromValue(int value) {
    updateTimerOption(TimerOption.fromValue(value));
  }

  void updateTimerOption(TimerOption value) {
    switch (value) {
      case TimerOption.none:
        state = state.copyWith(timerOption: value, counter: 0);
        break;
      case TimerOption.threeSec:
        state = state.copyWith(timerOption: value, counter: 3);
        break;
      case TimerOption.tenSec:
        state = state.copyWith(timerOption: value, counter: 10);
        break;
    }
  }

  void updateCounter(int value) {
    state = state.copyWith(counter: value);
  }
}
