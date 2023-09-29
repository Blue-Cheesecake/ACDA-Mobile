// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evaluation_result_history_number_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EvaluationResultHistoryNumberModel _$EvaluationResultHistoryNumberModelFromJson(
    Map<String, dynamic> json) {
  return _EvaluationResultHistoryNumberModel.fromJson(json);
}

/// @nodoc
mixin _$EvaluationResultHistoryNumberModel {
  int get numPassed => throw _privateConstructorUsedError;
  int get numFailed => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvaluationResultHistoryNumberModelCopyWith<
          EvaluationResultHistoryNumberModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvaluationResultHistoryNumberModelCopyWith<$Res> {
  factory $EvaluationResultHistoryNumberModelCopyWith(
          EvaluationResultHistoryNumberModel value,
          $Res Function(EvaluationResultHistoryNumberModel) then) =
      _$EvaluationResultHistoryNumberModelCopyWithImpl<$Res,
          EvaluationResultHistoryNumberModel>;
  @useResult
  $Res call({int numPassed, int numFailed, int total});
}

/// @nodoc
class _$EvaluationResultHistoryNumberModelCopyWithImpl<$Res,
        $Val extends EvaluationResultHistoryNumberModel>
    implements $EvaluationResultHistoryNumberModelCopyWith<$Res> {
  _$EvaluationResultHistoryNumberModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numPassed = null,
    Object? numFailed = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      numPassed: null == numPassed
          ? _value.numPassed
          : numPassed // ignore: cast_nullable_to_non_nullable
              as int,
      numFailed: null == numFailed
          ? _value.numFailed
          : numFailed // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EvaluationResultHistoryNumberModelCopyWith<$Res>
    implements $EvaluationResultHistoryNumberModelCopyWith<$Res> {
  factory _$$_EvaluationResultHistoryNumberModelCopyWith(
          _$_EvaluationResultHistoryNumberModel value,
          $Res Function(_$_EvaluationResultHistoryNumberModel) then) =
      __$$_EvaluationResultHistoryNumberModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int numPassed, int numFailed, int total});
}

/// @nodoc
class __$$_EvaluationResultHistoryNumberModelCopyWithImpl<$Res>
    extends _$EvaluationResultHistoryNumberModelCopyWithImpl<$Res,
        _$_EvaluationResultHistoryNumberModel>
    implements _$$_EvaluationResultHistoryNumberModelCopyWith<$Res> {
  __$$_EvaluationResultHistoryNumberModelCopyWithImpl(
      _$_EvaluationResultHistoryNumberModel _value,
      $Res Function(_$_EvaluationResultHistoryNumberModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numPassed = null,
    Object? numFailed = null,
    Object? total = null,
  }) {
    return _then(_$_EvaluationResultHistoryNumberModel(
      numPassed: null == numPassed
          ? _value.numPassed
          : numPassed // ignore: cast_nullable_to_non_nullable
              as int,
      numFailed: null == numFailed
          ? _value.numFailed
          : numFailed // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EvaluationResultHistoryNumberModel
    implements _EvaluationResultHistoryNumberModel {
  _$_EvaluationResultHistoryNumberModel(
      {required this.numPassed, required this.numFailed, required this.total});

  factory _$_EvaluationResultHistoryNumberModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_EvaluationResultHistoryNumberModelFromJson(json);

  @override
  final int numPassed;
  @override
  final int numFailed;
  @override
  final int total;

  @override
  String toString() {
    return 'EvaluationResultHistoryNumberModel(numPassed: $numPassed, numFailed: $numFailed, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EvaluationResultHistoryNumberModel &&
            (identical(other.numPassed, numPassed) ||
                other.numPassed == numPassed) &&
            (identical(other.numFailed, numFailed) ||
                other.numFailed == numFailed) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, numPassed, numFailed, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EvaluationResultHistoryNumberModelCopyWith<
          _$_EvaluationResultHistoryNumberModel>
      get copyWith => __$$_EvaluationResultHistoryNumberModelCopyWithImpl<
          _$_EvaluationResultHistoryNumberModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EvaluationResultHistoryNumberModelToJson(
      this,
    );
  }
}

abstract class _EvaluationResultHistoryNumberModel
    implements EvaluationResultHistoryNumberModel {
  factory _EvaluationResultHistoryNumberModel(
      {required final int numPassed,
      required final int numFailed,
      required final int total}) = _$_EvaluationResultHistoryNumberModel;

  factory _EvaluationResultHistoryNumberModel.fromJson(
          Map<String, dynamic> json) =
      _$_EvaluationResultHistoryNumberModel.fromJson;

  @override
  int get numPassed;
  @override
  int get numFailed;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_EvaluationResultHistoryNumberModelCopyWith<
          _$_EvaluationResultHistoryNumberModel>
      get copyWith => throw _privateConstructorUsedError;
}
