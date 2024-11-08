// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evaluation_record_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EvaluationRecordModel _$EvaluationRecordModelFromJson(
    Map<String, dynamic> json) {
  return _EvaluationRecordModel.fromJson(json);
}

/// @nodoc
mixin _$EvaluationRecordModel {
  String get id => throw _privateConstructorUsedError;
  String get fullBodyImage => throw _privateConstructorUsedError;
  String get upperBodyImage =>
      throw _privateConstructorUsedError; // required final String studentIdCardImage,
  DateTime get addedAt => throw _privateConstructorUsedError;
  CommonEvaluationResultModel get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvaluationRecordModelCopyWith<EvaluationRecordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvaluationRecordModelCopyWith<$Res> {
  factory $EvaluationRecordModelCopyWith(EvaluationRecordModel value,
          $Res Function(EvaluationRecordModel) then) =
      _$EvaluationRecordModelCopyWithImpl<$Res, EvaluationRecordModel>;
  @useResult
  $Res call(
      {String id,
      String fullBodyImage,
      String upperBodyImage,
      DateTime addedAt,
      CommonEvaluationResultModel result});

  $CommonEvaluationResultModelCopyWith<$Res> get result;
}

/// @nodoc
class _$EvaluationRecordModelCopyWithImpl<$Res,
        $Val extends EvaluationRecordModel>
    implements $EvaluationRecordModelCopyWith<$Res> {
  _$EvaluationRecordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullBodyImage = null,
    Object? upperBodyImage = null,
    Object? addedAt = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullBodyImage: null == fullBodyImage
          ? _value.fullBodyImage
          : fullBodyImage // ignore: cast_nullable_to_non_nullable
              as String,
      upperBodyImage: null == upperBodyImage
          ? _value.upperBodyImage
          : upperBodyImage // ignore: cast_nullable_to_non_nullable
              as String,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as CommonEvaluationResultModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommonEvaluationResultModelCopyWith<$Res> get result {
    return $CommonEvaluationResultModelCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EvaluationRecordModelCopyWith<$Res>
    implements $EvaluationRecordModelCopyWith<$Res> {
  factory _$$_EvaluationRecordModelCopyWith(_$_EvaluationRecordModel value,
          $Res Function(_$_EvaluationRecordModel) then) =
      __$$_EvaluationRecordModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String fullBodyImage,
      String upperBodyImage,
      DateTime addedAt,
      CommonEvaluationResultModel result});

  @override
  $CommonEvaluationResultModelCopyWith<$Res> get result;
}

/// @nodoc
class __$$_EvaluationRecordModelCopyWithImpl<$Res>
    extends _$EvaluationRecordModelCopyWithImpl<$Res, _$_EvaluationRecordModel>
    implements _$$_EvaluationRecordModelCopyWith<$Res> {
  __$$_EvaluationRecordModelCopyWithImpl(_$_EvaluationRecordModel _value,
      $Res Function(_$_EvaluationRecordModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullBodyImage = null,
    Object? upperBodyImage = null,
    Object? addedAt = null,
    Object? result = null,
  }) {
    return _then(_$_EvaluationRecordModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullBodyImage: null == fullBodyImage
          ? _value.fullBodyImage
          : fullBodyImage // ignore: cast_nullable_to_non_nullable
              as String,
      upperBodyImage: null == upperBodyImage
          ? _value.upperBodyImage
          : upperBodyImage // ignore: cast_nullable_to_non_nullable
              as String,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as CommonEvaluationResultModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EvaluationRecordModel implements _EvaluationRecordModel {
  _$_EvaluationRecordModel(
      {required this.id,
      required this.fullBodyImage,
      required this.upperBodyImage,
      required this.addedAt,
      required this.result});

  factory _$_EvaluationRecordModel.fromJson(Map<String, dynamic> json) =>
      _$$_EvaluationRecordModelFromJson(json);

  @override
  final String id;
  @override
  final String fullBodyImage;
  @override
  final String upperBodyImage;
// required final String studentIdCardImage,
  @override
  final DateTime addedAt;
  @override
  final CommonEvaluationResultModel result;

  @override
  String toString() {
    return 'EvaluationRecordModel(id: $id, fullBodyImage: $fullBodyImage, upperBodyImage: $upperBodyImage, addedAt: $addedAt, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EvaluationRecordModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullBodyImage, fullBodyImage) ||
                other.fullBodyImage == fullBodyImage) &&
            (identical(other.upperBodyImage, upperBodyImage) ||
                other.upperBodyImage == upperBodyImage) &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, fullBodyImage, upperBodyImage, addedAt, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EvaluationRecordModelCopyWith<_$_EvaluationRecordModel> get copyWith =>
      __$$_EvaluationRecordModelCopyWithImpl<_$_EvaluationRecordModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EvaluationRecordModelToJson(
      this,
    );
  }
}

abstract class _EvaluationRecordModel implements EvaluationRecordModel {
  factory _EvaluationRecordModel(
          {required final String id,
          required final String fullBodyImage,
          required final String upperBodyImage,
          required final DateTime addedAt,
          required final CommonEvaluationResultModel result}) =
      _$_EvaluationRecordModel;

  factory _EvaluationRecordModel.fromJson(Map<String, dynamic> json) =
      _$_EvaluationRecordModel.fromJson;

  @override
  String get id;
  @override
  String get fullBodyImage;
  @override
  String get upperBodyImage;
  @override // required final String studentIdCardImage,
  DateTime get addedAt;
  @override
  CommonEvaluationResultModel get result;
  @override
  @JsonKey(ignore: true)
  _$$_EvaluationRecordModelCopyWith<_$_EvaluationRecordModel> get copyWith =>
      throw _privateConstructorUsedError;
}
