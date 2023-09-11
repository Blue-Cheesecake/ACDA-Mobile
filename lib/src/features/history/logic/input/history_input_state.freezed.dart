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
  EvaluationRecordRequestParams get getRequestParams =>
      throw _privateConstructorUsedError;
  DeleteEvaluationRecordRequestModel get deleteRequestParams =>
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
  $Res call(
      {EvaluationRecordRequestParams getRequestParams,
      DeleteEvaluationRecordRequestModel deleteRequestParams});

  $EvaluationRecordRequestParamsCopyWith<$Res> get getRequestParams;
  $DeleteEvaluationRecordRequestModelCopyWith<$Res> get deleteRequestParams;
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
    Object? getRequestParams = null,
    Object? deleteRequestParams = null,
  }) {
    return _then(_value.copyWith(
      getRequestParams: null == getRequestParams
          ? _value.getRequestParams
          : getRequestParams // ignore: cast_nullable_to_non_nullable
              as EvaluationRecordRequestParams,
      deleteRequestParams: null == deleteRequestParams
          ? _value.deleteRequestParams
          : deleteRequestParams // ignore: cast_nullable_to_non_nullable
              as DeleteEvaluationRecordRequestModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EvaluationRecordRequestParamsCopyWith<$Res> get getRequestParams {
    return $EvaluationRecordRequestParamsCopyWith<$Res>(_value.getRequestParams,
        (value) {
      return _then(_value.copyWith(getRequestParams: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DeleteEvaluationRecordRequestModelCopyWith<$Res> get deleteRequestParams {
    return $DeleteEvaluationRecordRequestModelCopyWith<$Res>(
        _value.deleteRequestParams, (value) {
      return _then(_value.copyWith(deleteRequestParams: value) as $Val);
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
  $Res call(
      {EvaluationRecordRequestParams getRequestParams,
      DeleteEvaluationRecordRequestModel deleteRequestParams});

  @override
  $EvaluationRecordRequestParamsCopyWith<$Res> get getRequestParams;
  @override
  $DeleteEvaluationRecordRequestModelCopyWith<$Res> get deleteRequestParams;
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
    Object? getRequestParams = null,
    Object? deleteRequestParams = null,
  }) {
    return _then(_$_HistoryInputState(
      getRequestParams: null == getRequestParams
          ? _value.getRequestParams
          : getRequestParams // ignore: cast_nullable_to_non_nullable
              as EvaluationRecordRequestParams,
      deleteRequestParams: null == deleteRequestParams
          ? _value.deleteRequestParams
          : deleteRequestParams // ignore: cast_nullable_to_non_nullable
              as DeleteEvaluationRecordRequestModel,
    ));
  }
}

/// @nodoc

class _$_HistoryInputState extends _HistoryInputState {
  _$_HistoryInputState(
      {required this.getRequestParams, required this.deleteRequestParams})
      : super._();

  @override
  final EvaluationRecordRequestParams getRequestParams;
  @override
  final DeleteEvaluationRecordRequestModel deleteRequestParams;

  @override
  String toString() {
    return 'HistoryInputState(getRequestParams: $getRequestParams, deleteRequestParams: $deleteRequestParams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryInputState &&
            (identical(other.getRequestParams, getRequestParams) ||
                other.getRequestParams == getRequestParams) &&
            (identical(other.deleteRequestParams, deleteRequestParams) ||
                other.deleteRequestParams == deleteRequestParams));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, getRequestParams, deleteRequestParams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryInputStateCopyWith<_$_HistoryInputState> get copyWith =>
      __$$_HistoryInputStateCopyWithImpl<_$_HistoryInputState>(
          this, _$identity);
}

abstract class _HistoryInputState extends HistoryInputState {
  factory _HistoryInputState(
      {required final EvaluationRecordRequestParams getRequestParams,
      required final DeleteEvaluationRecordRequestModel
          deleteRequestParams}) = _$_HistoryInputState;
  _HistoryInputState._() : super._();

  @override
  EvaluationRecordRequestParams get getRequestParams;
  @override
  DeleteEvaluationRecordRequestModel get deleteRequestParams;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryInputStateCopyWith<_$_HistoryInputState> get copyWith =>
      throw _privateConstructorUsedError;
}
