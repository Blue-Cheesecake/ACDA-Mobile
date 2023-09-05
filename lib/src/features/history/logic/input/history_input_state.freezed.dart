// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_input_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryInputState {
  EvaluationRecordRequestParams get requestParams =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryInputStateCopyWith<HistoryInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryInputStateCopyWith<$Res> {
  factory $HistoryInputStateCopyWith(
          HistoryInputState value, $Res Function(HistoryInputState) then) =
      _$HistoryInputStateCopyWithImpl<$Res, HistoryInputState>;
  @useResult
  $Res call({EvaluationRecordRequestParams requestParams});

  $EvaluationRecordRequestParamsCopyWith<$Res> get requestParams;
}

/// @nodoc
class _$HistoryInputStateCopyWithImpl<$Res, $Val extends HistoryInputState>
    implements $HistoryInputStateCopyWith<$Res> {
  _$HistoryInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestParams = null,
  }) {
    return _then(_value.copyWith(
      requestParams: null == requestParams
          ? _value.requestParams
          : requestParams // ignore: cast_nullable_to_non_nullable
              as EvaluationRecordRequestParams,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EvaluationRecordRequestParamsCopyWith<$Res> get requestParams {
    return $EvaluationRecordRequestParamsCopyWith<$Res>(_value.requestParams,
        (value) {
      return _then(_value.copyWith(requestParams: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HistoryInputStateCopyWith<$Res>
    implements $HistoryInputStateCopyWith<$Res> {
  factory _$$_HistoryInputStateCopyWith(_$_HistoryInputState value,
          $Res Function(_$_HistoryInputState) then) =
      __$$_HistoryInputStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EvaluationRecordRequestParams requestParams});

  @override
  $EvaluationRecordRequestParamsCopyWith<$Res> get requestParams;
}

/// @nodoc
class __$$_HistoryInputStateCopyWithImpl<$Res>
    extends _$HistoryInputStateCopyWithImpl<$Res, _$_HistoryInputState>
    implements _$$_HistoryInputStateCopyWith<$Res> {
  __$$_HistoryInputStateCopyWithImpl(
      _$_HistoryInputState _value, $Res Function(_$_HistoryInputState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestParams = null,
  }) {
    return _then(_$_HistoryInputState(
      requestParams: null == requestParams
          ? _value.requestParams
          : requestParams // ignore: cast_nullable_to_non_nullable
              as EvaluationRecordRequestParams,
    ));
  }
}

/// @nodoc

class _$_HistoryInputState implements _HistoryInputState {
  _$_HistoryInputState({required this.requestParams});

  @override
  final EvaluationRecordRequestParams requestParams;

  @override
  String toString() {
    return 'HistoryInputState(requestParams: $requestParams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryInputState &&
            (identical(other.requestParams, requestParams) ||
                other.requestParams == requestParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestParams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryInputStateCopyWith<_$_HistoryInputState> get copyWith =>
      __$$_HistoryInputStateCopyWithImpl<_$_HistoryInputState>(
          this, _$identity);
}

abstract class _HistoryInputState implements HistoryInputState {
  factory _HistoryInputState(
          {required final EvaluationRecordRequestParams requestParams}) =
      _$_HistoryInputState;

  @override
  EvaluationRecordRequestParams get requestParams;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryInputStateCopyWith<_$_HistoryInputState> get copyWith =>
      throw _privateConstructorUsedError;
}
