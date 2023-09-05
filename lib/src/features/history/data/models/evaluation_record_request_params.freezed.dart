// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evaluation_record_request_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EvaluationRecordRequestParams _$EvaluationRecordRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _EvaluationRecordRequestParams.fromJson(json);
}

/// @nodoc
mixin _$EvaluationRecordRequestParams {
  bool? get result => throw _privateConstructorUsedError;
  DateTime? get fromDate => throw _privateConstructorUsedError;
  DateTime? get toDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvaluationRecordRequestParamsCopyWith<EvaluationRecordRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvaluationRecordRequestParamsCopyWith<$Res> {
  factory $EvaluationRecordRequestParamsCopyWith(
          EvaluationRecordRequestParams value,
          $Res Function(EvaluationRecordRequestParams) then) =
      _$EvaluationRecordRequestParamsCopyWithImpl<$Res,
          EvaluationRecordRequestParams>;
  @useResult
  $Res call({bool? result, DateTime? fromDate, DateTime? toDate});
}

/// @nodoc
class _$EvaluationRecordRequestParamsCopyWithImpl<$Res,
        $Val extends EvaluationRecordRequestParams>
    implements $EvaluationRecordRequestParamsCopyWith<$Res> {
  _$EvaluationRecordRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool?,
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EvaluationRecordRequestParamsCopyWith<$Res>
    implements $EvaluationRecordRequestParamsCopyWith<$Res> {
  factory _$$_EvaluationRecordRequestParamsCopyWith(
          _$_EvaluationRecordRequestParams value,
          $Res Function(_$_EvaluationRecordRequestParams) then) =
      __$$_EvaluationRecordRequestParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? result, DateTime? fromDate, DateTime? toDate});
}

/// @nodoc
class __$$_EvaluationRecordRequestParamsCopyWithImpl<$Res>
    extends _$EvaluationRecordRequestParamsCopyWithImpl<$Res,
        _$_EvaluationRecordRequestParams>
    implements _$$_EvaluationRecordRequestParamsCopyWith<$Res> {
  __$$_EvaluationRecordRequestParamsCopyWithImpl(
      _$_EvaluationRecordRequestParams _value,
      $Res Function(_$_EvaluationRecordRequestParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
  }) {
    return _then(_$_EvaluationRecordRequestParams(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool?,
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EvaluationRecordRequestParams
    implements _EvaluationRecordRequestParams {
  _$_EvaluationRecordRequestParams({this.result, this.fromDate, this.toDate});

  factory _$_EvaluationRecordRequestParams.fromJson(
          Map<String, dynamic> json) =>
      _$$_EvaluationRecordRequestParamsFromJson(json);

  @override
  final bool? result;
  @override
  final DateTime? fromDate;
  @override
  final DateTime? toDate;

  @override
  String toString() {
    return 'EvaluationRecordRequestParams(result: $result, fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EvaluationRecordRequestParams &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result, fromDate, toDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EvaluationRecordRequestParamsCopyWith<_$_EvaluationRecordRequestParams>
      get copyWith => __$$_EvaluationRecordRequestParamsCopyWithImpl<
          _$_EvaluationRecordRequestParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EvaluationRecordRequestParamsToJson(
      this,
    );
  }
}

abstract class _EvaluationRecordRequestParams
    implements EvaluationRecordRequestParams {
  factory _EvaluationRecordRequestParams(
      {final bool? result,
      final DateTime? fromDate,
      final DateTime? toDate}) = _$_EvaluationRecordRequestParams;

  factory _EvaluationRecordRequestParams.fromJson(Map<String, dynamic> json) =
      _$_EvaluationRecordRequestParams.fromJson;

  @override
  bool? get result;
  @override
  DateTime? get fromDate;
  @override
  DateTime? get toDate;
  @override
  @JsonKey(ignore: true)
  _$$_EvaluationRecordRequestParamsCopyWith<_$_EvaluationRecordRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}
