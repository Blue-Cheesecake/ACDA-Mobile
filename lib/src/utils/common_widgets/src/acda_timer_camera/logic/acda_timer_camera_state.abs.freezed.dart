// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'acda_timer_camera_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ACDATimerCameraState {
  CameraDescription? get cameraDescription =>
      throw _privateConstructorUsedError;
  bool get isSwitching => throw _privateConstructorUsedError;
  XFile? get pickedImage => throw _privateConstructorUsedError;
  TimerOption get timerOption => throw _privateConstructorUsedError;
  int get counter => throw _privateConstructorUsedError;
  bool get isStartCounting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ACDATimerCameraStateCopyWith<ACDATimerCameraState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ACDATimerCameraStateCopyWith<$Res> {
  factory $ACDATimerCameraStateCopyWith(ACDATimerCameraState value,
          $Res Function(ACDATimerCameraState) then) =
      _$ACDATimerCameraStateCopyWithImpl<$Res, ACDATimerCameraState>;
  @useResult
  $Res call(
      {CameraDescription? cameraDescription,
      bool isSwitching,
      XFile? pickedImage,
      TimerOption timerOption,
      int counter,
      bool isStartCounting});
}

/// @nodoc
class _$ACDATimerCameraStateCopyWithImpl<$Res,
        $Val extends ACDATimerCameraState>
    implements $ACDATimerCameraStateCopyWith<$Res> {
  _$ACDATimerCameraStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cameraDescription = freezed,
    Object? isSwitching = null,
    Object? pickedImage = freezed,
    Object? timerOption = null,
    Object? counter = null,
    Object? isStartCounting = null,
  }) {
    return _then(_value.copyWith(
      cameraDescription: freezed == cameraDescription
          ? _value.cameraDescription
          : cameraDescription // ignore: cast_nullable_to_non_nullable
              as CameraDescription?,
      isSwitching: null == isSwitching
          ? _value.isSwitching
          : isSwitching // ignore: cast_nullable_to_non_nullable
              as bool,
      pickedImage: freezed == pickedImage
          ? _value.pickedImage
          : pickedImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
      timerOption: null == timerOption
          ? _value.timerOption
          : timerOption // ignore: cast_nullable_to_non_nullable
              as TimerOption,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      isStartCounting: null == isStartCounting
          ? _value.isStartCounting
          : isStartCounting // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ACDATimerCameraStateCopyWith<$Res>
    implements $ACDATimerCameraStateCopyWith<$Res> {
  factory _$$_ACDATimerCameraStateCopyWith(_$_ACDATimerCameraState value,
          $Res Function(_$_ACDATimerCameraState) then) =
      __$$_ACDATimerCameraStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CameraDescription? cameraDescription,
      bool isSwitching,
      XFile? pickedImage,
      TimerOption timerOption,
      int counter,
      bool isStartCounting});
}

/// @nodoc
class __$$_ACDATimerCameraStateCopyWithImpl<$Res>
    extends _$ACDATimerCameraStateCopyWithImpl<$Res, _$_ACDATimerCameraState>
    implements _$$_ACDATimerCameraStateCopyWith<$Res> {
  __$$_ACDATimerCameraStateCopyWithImpl(_$_ACDATimerCameraState _value,
      $Res Function(_$_ACDATimerCameraState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cameraDescription = freezed,
    Object? isSwitching = null,
    Object? pickedImage = freezed,
    Object? timerOption = null,
    Object? counter = null,
    Object? isStartCounting = null,
  }) {
    return _then(_$_ACDATimerCameraState(
      cameraDescription: freezed == cameraDescription
          ? _value.cameraDescription
          : cameraDescription // ignore: cast_nullable_to_non_nullable
              as CameraDescription?,
      isSwitching: null == isSwitching
          ? _value.isSwitching
          : isSwitching // ignore: cast_nullable_to_non_nullable
              as bool,
      pickedImage: freezed == pickedImage
          ? _value.pickedImage
          : pickedImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
      timerOption: null == timerOption
          ? _value.timerOption
          : timerOption // ignore: cast_nullable_to_non_nullable
              as TimerOption,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      isStartCounting: null == isStartCounting
          ? _value.isStartCounting
          : isStartCounting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ACDATimerCameraState implements _ACDATimerCameraState {
  _$_ACDATimerCameraState(
      {this.cameraDescription,
      this.isSwitching = false,
      this.pickedImage,
      this.timerOption = TimerOption.none,
      this.counter = 0,
      this.isStartCounting = false});

  @override
  final CameraDescription? cameraDescription;
  @override
  @JsonKey()
  final bool isSwitching;
  @override
  final XFile? pickedImage;
  @override
  @JsonKey()
  final TimerOption timerOption;
  @override
  @JsonKey()
  final int counter;
  @override
  @JsonKey()
  final bool isStartCounting;

  @override
  String toString() {
    return 'ACDATimerCameraState(cameraDescription: $cameraDescription, isSwitching: $isSwitching, pickedImage: $pickedImage, timerOption: $timerOption, counter: $counter, isStartCounting: $isStartCounting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ACDATimerCameraState &&
            (identical(other.cameraDescription, cameraDescription) ||
                other.cameraDescription == cameraDescription) &&
            (identical(other.isSwitching, isSwitching) ||
                other.isSwitching == isSwitching) &&
            (identical(other.pickedImage, pickedImage) ||
                other.pickedImage == pickedImage) &&
            (identical(other.timerOption, timerOption) ||
                other.timerOption == timerOption) &&
            (identical(other.counter, counter) || other.counter == counter) &&
            (identical(other.isStartCounting, isStartCounting) ||
                other.isStartCounting == isStartCounting));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cameraDescription, isSwitching,
      pickedImage, timerOption, counter, isStartCounting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ACDATimerCameraStateCopyWith<_$_ACDATimerCameraState> get copyWith =>
      __$$_ACDATimerCameraStateCopyWithImpl<_$_ACDATimerCameraState>(
          this, _$identity);
}

abstract class _ACDATimerCameraState implements ACDATimerCameraState {
  factory _ACDATimerCameraState(
      {final CameraDescription? cameraDescription,
      final bool isSwitching,
      final XFile? pickedImage,
      final TimerOption timerOption,
      final int counter,
      final bool isStartCounting}) = _$_ACDATimerCameraState;

  @override
  CameraDescription? get cameraDescription;
  @override
  bool get isSwitching;
  @override
  XFile? get pickedImage;
  @override
  TimerOption get timerOption;
  @override
  int get counter;
  @override
  bool get isStartCounting;
  @override
  @JsonKey(ignore: true)
  _$$_ACDATimerCameraStateCopyWith<_$_ACDATimerCameraState> get copyWith =>
      throw _privateConstructorUsedError;
}
