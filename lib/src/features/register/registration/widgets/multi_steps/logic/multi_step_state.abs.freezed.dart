// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multi_step_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MultiStepState {
  StepStatus get info => throw _privateConstructorUsedError;
  StepStatus get faceImage => throw _privateConstructorUsedError;
  StepStatus get completion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MultiStepStateCopyWith<MultiStepState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiStepStateCopyWith<$Res> {
  factory $MultiStepStateCopyWith(
          MultiStepState value, $Res Function(MultiStepState) then) =
      _$MultiStepStateCopyWithImpl<$Res, MultiStepState>;
  @useResult
  $Res call({StepStatus info, StepStatus faceImage, StepStatus completion});
}

/// @nodoc
class _$MultiStepStateCopyWithImpl<$Res, $Val extends MultiStepState>
    implements $MultiStepStateCopyWith<$Res> {
  _$MultiStepStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? faceImage = null,
    Object? completion = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as StepStatus,
      faceImage: null == faceImage
          ? _value.faceImage
          : faceImage // ignore: cast_nullable_to_non_nullable
              as StepStatus,
      completion: null == completion
          ? _value.completion
          : completion // ignore: cast_nullable_to_non_nullable
              as StepStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MultiStepStateCopyWith<$Res>
    implements $MultiStepStateCopyWith<$Res> {
  factory _$$_MultiStepStateCopyWith(
          _$_MultiStepState value, $Res Function(_$_MultiStepState) then) =
      __$$_MultiStepStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StepStatus info, StepStatus faceImage, StepStatus completion});
}

/// @nodoc
class __$$_MultiStepStateCopyWithImpl<$Res>
    extends _$MultiStepStateCopyWithImpl<$Res, _$_MultiStepState>
    implements _$$_MultiStepStateCopyWith<$Res> {
  __$$_MultiStepStateCopyWithImpl(
      _$_MultiStepState _value, $Res Function(_$_MultiStepState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? faceImage = null,
    Object? completion = null,
  }) {
    return _then(_$_MultiStepState(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as StepStatus,
      faceImage: null == faceImage
          ? _value.faceImage
          : faceImage // ignore: cast_nullable_to_non_nullable
              as StepStatus,
      completion: null == completion
          ? _value.completion
          : completion // ignore: cast_nullable_to_non_nullable
              as StepStatus,
    ));
  }
}

/// @nodoc

class _$_MultiStepState implements _MultiStepState {
  _$_MultiStepState(
      {this.info = StepStatus.selected,
      this.faceImage = StepStatus.empty,
      this.completion = StepStatus.empty});

  @override
  @JsonKey()
  final StepStatus info;
  @override
  @JsonKey()
  final StepStatus faceImage;
  @override
  @JsonKey()
  final StepStatus completion;

  @override
  String toString() {
    return 'MultiStepState(info: $info, faceImage: $faceImage, completion: $completion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MultiStepState &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.faceImage, faceImage) ||
                other.faceImage == faceImage) &&
            (identical(other.completion, completion) ||
                other.completion == completion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info, faceImage, completion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MultiStepStateCopyWith<_$_MultiStepState> get copyWith =>
      __$$_MultiStepStateCopyWithImpl<_$_MultiStepState>(this, _$identity);
}

abstract class _MultiStepState implements MultiStepState {
  factory _MultiStepState(
      {final StepStatus info,
      final StepStatus faceImage,
      final StepStatus completion}) = _$_MultiStepState;

  @override
  StepStatus get info;
  @override
  StepStatus get faceImage;
  @override
  StepStatus get completion;
  @override
  @JsonKey(ignore: true)
  _$$_MultiStepStateCopyWith<_$_MultiStepState> get copyWith =>
      throw _privateConstructorUsedError;
}
