// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evaluation_record_request_params_temp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EvaluationRecordRequestParamsTemp {
  String? get sort => throw _privateConstructorUsedError;
  DateTime? get fromDate => throw _privateConstructorUsedError;
  DateTime? get toDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EvaluationRecordRequestParamsTempCopyWith<EvaluationRecordRequestParamsTemp>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvaluationRecordRequestParamsTempCopyWith<$Res> {
  factory $EvaluationRecordRequestParamsTempCopyWith(
          EvaluationRecordRequestParamsTemp value,
          $Res Function(EvaluationRecordRequestParamsTemp) then) =
      _$EvaluationRecordRequestParamsTempCopyWithImpl<$Res,
          EvaluationRecordRequestParamsTemp>;
  @useResult
  $Res call({String? sort, DateTime? fromDate, DateTime? toDate});
}

/// @nodoc
class _$EvaluationRecordRequestParamsTempCopyWithImpl<$Res,
        $Val extends EvaluationRecordRequestParamsTemp>
    implements $EvaluationRecordRequestParamsTempCopyWith<$Res> {
  _$EvaluationRecordRequestParamsTempCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sort = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
  }) {
    return _then(_value.copyWith(
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_EvaluationRecordRequestParamsTempCopyWith<$Res>
    implements $EvaluationRecordRequestParamsTempCopyWith<$Res> {
  factory _$$_EvaluationRecordRequestParamsTempCopyWith(
          _$_EvaluationRecordRequestParamsTemp value,
          $Res Function(_$_EvaluationRecordRequestParamsTemp) then) =
      __$$_EvaluationRecordRequestParamsTempCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? sort, DateTime? fromDate, DateTime? toDate});
}

/// @nodoc
class __$$_EvaluationRecordRequestParamsTempCopyWithImpl<$Res>
    extends _$EvaluationRecordRequestParamsTempCopyWithImpl<$Res,
        _$_EvaluationRecordRequestParamsTemp>
    implements _$$_EvaluationRecordRequestParamsTempCopyWith<$Res> {
  __$$_EvaluationRecordRequestParamsTempCopyWithImpl(
      _$_EvaluationRecordRequestParamsTemp _value,
      $Res Function(_$_EvaluationRecordRequestParamsTemp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sort = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
  }) {
    return _then(_$_EvaluationRecordRequestParamsTemp(
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _$_EvaluationRecordRequestParamsTemp
    implements _EvaluationRecordRequestParamsTemp {
  _$_EvaluationRecordRequestParamsTemp({this.sort, this.fromDate, this.toDate});

  @override
  final String? sort;
  @override
  final DateTime? fromDate;
  @override
  final DateTime? toDate;

  @override
  String toString() {
    return 'EvaluationRecordRequestParamsTemp(sort: $sort, fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EvaluationRecordRequestParamsTemp &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sort, fromDate, toDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EvaluationRecordRequestParamsTempCopyWith<
          _$_EvaluationRecordRequestParamsTemp>
      get copyWith => __$$_EvaluationRecordRequestParamsTempCopyWithImpl<
          _$_EvaluationRecordRequestParamsTemp>(this, _$identity);
}

abstract class _EvaluationRecordRequestParamsTemp
    implements EvaluationRecordRequestParamsTemp {
  factory _EvaluationRecordRequestParamsTemp(
      {final String? sort,
      final DateTime? fromDate,
      final DateTime? toDate}) = _$_EvaluationRecordRequestParamsTemp;

  @override
  String? get sort;
  @override
  DateTime? get fromDate;
  @override
  DateTime? get toDate;
  @override
  @JsonKey(ignore: true)
  _$$_EvaluationRecordRequestParamsTempCopyWith<
          _$_EvaluationRecordRequestParamsTemp>
      get copyWith => throw _privateConstructorUsedError;
}
