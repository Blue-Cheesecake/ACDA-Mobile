// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evaluation_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EvaluationResultModel _$EvaluationResultModelFromJson(
    Map<String, dynamic> json) {
  return _EvaluationResultModel.fromJson(json);
}

/// @nodoc
mixin _$EvaluationResultModel {
  bool get isPassed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvaluationResultModelCopyWith<EvaluationResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvaluationResultModelCopyWith<$Res> {
  factory $EvaluationResultModelCopyWith(EvaluationResultModel value,
          $Res Function(EvaluationResultModel) then) =
      _$EvaluationResultModelCopyWithImpl<$Res, EvaluationResultModel>;
  @useResult
  $Res call({bool isPassed});
}

/// @nodoc
class _$EvaluationResultModelCopyWithImpl<$Res,
        $Val extends EvaluationResultModel>
    implements $EvaluationResultModelCopyWith<$Res> {
  _$EvaluationResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPassed = null,
  }) {
    return _then(_value.copyWith(
      isPassed: null == isPassed
          ? _value.isPassed
          : isPassed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EvaluationResultModelCopyWith<$Res>
    implements $EvaluationResultModelCopyWith<$Res> {
  factory _$$_EvaluationResultModelCopyWith(_$_EvaluationResultModel value,
          $Res Function(_$_EvaluationResultModel) then) =
      __$$_EvaluationResultModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPassed});
}

/// @nodoc
class __$$_EvaluationResultModelCopyWithImpl<$Res>
    extends _$EvaluationResultModelCopyWithImpl<$Res, _$_EvaluationResultModel>
    implements _$$_EvaluationResultModelCopyWith<$Res> {
  __$$_EvaluationResultModelCopyWithImpl(_$_EvaluationResultModel _value,
      $Res Function(_$_EvaluationResultModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPassed = null,
  }) {
    return _then(_$_EvaluationResultModel(
      isPassed: null == isPassed
          ? _value.isPassed
          : isPassed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EvaluationResultModel implements _EvaluationResultModel {
  _$_EvaluationResultModel({required this.isPassed});

  factory _$_EvaluationResultModel.fromJson(Map<String, dynamic> json) =>
      _$$_EvaluationResultModelFromJson(json);

  @override
  final bool isPassed;

  @override
  String toString() {
    return 'EvaluationResultModel(isPassed: $isPassed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EvaluationResultModel &&
            (identical(other.isPassed, isPassed) ||
                other.isPassed == isPassed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isPassed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EvaluationResultModelCopyWith<_$_EvaluationResultModel> get copyWith =>
      __$$_EvaluationResultModelCopyWithImpl<_$_EvaluationResultModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EvaluationResultModelToJson(
      this,
    );
  }
}

abstract class _EvaluationResultModel implements EvaluationResultModel {
  factory _EvaluationResultModel({required final bool isPassed}) =
      _$_EvaluationResultModel;

  factory _EvaluationResultModel.fromJson(Map<String, dynamic> json) =
      _$_EvaluationResultModel.fromJson;

  @override
  bool get isPassed;
  @override
  @JsonKey(ignore: true)
  _$$_EvaluationResultModelCopyWith<_$_EvaluationResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}
