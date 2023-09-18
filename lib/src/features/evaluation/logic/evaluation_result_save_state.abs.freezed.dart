// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evaluation_result_save_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EvaluationResultSaveState {
  SaveResultRequestModel? get saveResultRequest =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EvaluationResultSaveStateCopyWith<EvaluationResultSaveState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvaluationResultSaveStateCopyWith<$Res> {
  factory $EvaluationResultSaveStateCopyWith(EvaluationResultSaveState value,
          $Res Function(EvaluationResultSaveState) then) =
      _$EvaluationResultSaveStateCopyWithImpl<$Res, EvaluationResultSaveState>;
  @useResult
  $Res call({SaveResultRequestModel? saveResultRequest});

  $SaveResultRequestModelCopyWith<$Res>? get saveResultRequest;
}

/// @nodoc
class _$EvaluationResultSaveStateCopyWithImpl<$Res,
        $Val extends EvaluationResultSaveState>
    implements $EvaluationResultSaveStateCopyWith<$Res> {
  _$EvaluationResultSaveStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saveResultRequest = freezed,
  }) {
    return _then(_value.copyWith(
      saveResultRequest: freezed == saveResultRequest
          ? _value.saveResultRequest
          : saveResultRequest // ignore: cast_nullable_to_non_nullable
              as SaveResultRequestModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SaveResultRequestModelCopyWith<$Res>? get saveResultRequest {
    if (_value.saveResultRequest == null) {
      return null;
    }

    return $SaveResultRequestModelCopyWith<$Res>(_value.saveResultRequest!,
        (value) {
      return _then(_value.copyWith(saveResultRequest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EvaluationResultSaveStateCopyWith<$Res>
    implements $EvaluationResultSaveStateCopyWith<$Res> {
  factory _$$_EvaluationResultSaveStateCopyWith(
          _$_EvaluationResultSaveState value,
          $Res Function(_$_EvaluationResultSaveState) then) =
      __$$_EvaluationResultSaveStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SaveResultRequestModel? saveResultRequest});

  @override
  $SaveResultRequestModelCopyWith<$Res>? get saveResultRequest;
}

/// @nodoc
class __$$_EvaluationResultSaveStateCopyWithImpl<$Res>
    extends _$EvaluationResultSaveStateCopyWithImpl<$Res,
        _$_EvaluationResultSaveState>
    implements _$$_EvaluationResultSaveStateCopyWith<$Res> {
  __$$_EvaluationResultSaveStateCopyWithImpl(
      _$_EvaluationResultSaveState _value,
      $Res Function(_$_EvaluationResultSaveState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saveResultRequest = freezed,
  }) {
    return _then(_$_EvaluationResultSaveState(
      saveResultRequest: freezed == saveResultRequest
          ? _value.saveResultRequest
          : saveResultRequest // ignore: cast_nullable_to_non_nullable
              as SaveResultRequestModel?,
    ));
  }
}

/// @nodoc

class _$_EvaluationResultSaveState implements _EvaluationResultSaveState {
  _$_EvaluationResultSaveState({this.saveResultRequest});

  @override
  final SaveResultRequestModel? saveResultRequest;

  @override
  String toString() {
    return 'EvaluationResultSaveState(saveResultRequest: $saveResultRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EvaluationResultSaveState &&
            (identical(other.saveResultRequest, saveResultRequest) ||
                other.saveResultRequest == saveResultRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, saveResultRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EvaluationResultSaveStateCopyWith<_$_EvaluationResultSaveState>
      get copyWith => __$$_EvaluationResultSaveStateCopyWithImpl<
          _$_EvaluationResultSaveState>(this, _$identity);
}

abstract class _EvaluationResultSaveState implements EvaluationResultSaveState {
  factory _EvaluationResultSaveState(
          {final SaveResultRequestModel? saveResultRequest}) =
      _$_EvaluationResultSaveState;

  @override
  SaveResultRequestModel? get saveResultRequest;
  @override
  @JsonKey(ignore: true)
  _$$_EvaluationResultSaveStateCopyWith<_$_EvaluationResultSaveState>
      get copyWith => throw _privateConstructorUsedError;
}
