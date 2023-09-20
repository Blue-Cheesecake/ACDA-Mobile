// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_evaluation_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommonEvaluationResultModel _$CommonEvaluationResultModelFromJson(
    Map<String, dynamic> json) {
  return _CommonEvaluationResultModel.fromJson(json);
}

/// @nodoc
mixin _$CommonEvaluationResultModel {
  bool get isPassed => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonEvaluationResultModelCopyWith<CommonEvaluationResultModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonEvaluationResultModelCopyWith<$Res> {
  factory $CommonEvaluationResultModelCopyWith(
          CommonEvaluationResultModel value,
          $Res Function(CommonEvaluationResultModel) then) =
      _$CommonEvaluationResultModelCopyWithImpl<$Res,
          CommonEvaluationResultModel>;
  @useResult
  $Res call({bool isPassed, String? message});
}

/// @nodoc
class _$CommonEvaluationResultModelCopyWithImpl<$Res,
        $Val extends CommonEvaluationResultModel>
    implements $CommonEvaluationResultModelCopyWith<$Res> {
  _$CommonEvaluationResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPassed = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      isPassed: null == isPassed
          ? _value.isPassed
          : isPassed // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommonEvaluationResultModelCopyWith<$Res>
    implements $CommonEvaluationResultModelCopyWith<$Res> {
  factory _$$_CommonEvaluationResultModelCopyWith(
          _$_CommonEvaluationResultModel value,
          $Res Function(_$_CommonEvaluationResultModel) then) =
      __$$_CommonEvaluationResultModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPassed, String? message});
}

/// @nodoc
class __$$_CommonEvaluationResultModelCopyWithImpl<$Res>
    extends _$CommonEvaluationResultModelCopyWithImpl<$Res,
        _$_CommonEvaluationResultModel>
    implements _$$_CommonEvaluationResultModelCopyWith<$Res> {
  __$$_CommonEvaluationResultModelCopyWithImpl(
      _$_CommonEvaluationResultModel _value,
      $Res Function(_$_CommonEvaluationResultModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPassed = null,
    Object? message = freezed,
  }) {
    return _then(_$_CommonEvaluationResultModel(
      isPassed: null == isPassed
          ? _value.isPassed
          : isPassed // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommonEvaluationResultModel implements _CommonEvaluationResultModel {
  _$_CommonEvaluationResultModel({required this.isPassed, this.message});

  factory _$_CommonEvaluationResultModel.fromJson(Map<String, dynamic> json) =>
      _$$_CommonEvaluationResultModelFromJson(json);

  @override
  final bool isPassed;
  @override
  final String? message;

  @override
  String toString() {
    return 'CommonEvaluationResultModel(isPassed: $isPassed, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommonEvaluationResultModel &&
            (identical(other.isPassed, isPassed) ||
                other.isPassed == isPassed) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isPassed, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommonEvaluationResultModelCopyWith<_$_CommonEvaluationResultModel>
      get copyWith => __$$_CommonEvaluationResultModelCopyWithImpl<
          _$_CommonEvaluationResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommonEvaluationResultModelToJson(
      this,
    );
  }
}

abstract class _CommonEvaluationResultModel
    implements CommonEvaluationResultModel {
  factory _CommonEvaluationResultModel(
      {required final bool isPassed,
      final String? message}) = _$_CommonEvaluationResultModel;

  factory _CommonEvaluationResultModel.fromJson(Map<String, dynamic> json) =
      _$_CommonEvaluationResultModel.fromJson;

  @override
  bool get isPassed;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_CommonEvaluationResultModelCopyWith<_$_CommonEvaluationResultModel>
      get copyWith => throw _privateConstructorUsedError;
}
