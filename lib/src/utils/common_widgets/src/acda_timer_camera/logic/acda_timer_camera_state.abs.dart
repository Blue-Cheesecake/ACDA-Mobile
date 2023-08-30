import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/utils.dart';

part 'acda_timer_camera_state.abs.freezed.dart';

@freezed
class ACDATimerCameraState with _$ACDATimerCameraState {
  factory ACDATimerCameraState({
    CameraDescription? cameraDescription,
    @Default(false) bool isSwitching,
    XFile? pickedImage,
    @Default(TimerOption.none) TimerOption timerOption,
    @Default(0) int counter,
    @Default(false) bool isStartCounting,
  }) = _ACDATimerCameraState;
}
