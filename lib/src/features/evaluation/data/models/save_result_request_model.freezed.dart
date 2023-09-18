// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_result_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SaveResultRequestModel _$SaveResultRequestModelFromJson(
    Map<String, dynamic> json) {
  return _SaveResultRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SaveResultRequestModel {
  String get fullBodyimage => throw _privateConstructorUsedError;
  String get upperBodyImage => throw _privateConstructorUsedError;
  String get studentIdCardImage => throw _privateConstructorUsedError;
  CommonEvaluationResultModel get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveResultRequestModelCopyWith<SaveResultRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveResultRequestModelCopyWith<$Res> {
  factory $SaveResultRequestModelCopyWith(SaveResultRequestModel value,
          $Res Function(SaveResultRequestModel) then) =
      _$SaveResultRequestModelCopyWithImpl<$Res, SaveResultRequestModel>;
  @useResult
  $Res call(
      {String fullBodyimage,
      String upperBodyImage,
      String studentIdCardImage,
      CommonEvaluationResultModel result});

  $CommonEvaluationResultModelCopyWith<$Res> get result;
}

/// @nodoc
class _$SaveResultRequestModelCopyWithImpl<$Res,
        $Val extends SaveResultRequestModel>
    implements $SaveResultRequestModelCopyWith<$Res> {
  _$SaveResultRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullBodyimage = null,
    Object? upperBodyImage = null,
    Object? studentIdCardImage = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      fullBodyimage: null == fullBodyimage
          ? _value.fullBodyimage
          : fullBodyimage // ignore: cast_nullable_to_non_nullable
              as String,
      upperBodyImage: null == upperBodyImage
          ? _value.upperBodyImage
          : upperBodyImage // ignore: cast_nullable_to_non_nullable
              as String,
      studentIdCardImage: null == studentIdCardImage
          ? _value.studentIdCardImage
          : studentIdCardImage // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_SaveResultRequestModelCopyWith<$Res>
    implements $SaveResultRequestModelCopyWith<$Res> {
  factory _$$_SaveResultRequestModelCopyWith(_$_SaveResultRequestModel value,
          $Res Function(_$_SaveResultRequestModel) then) =
      __$$_SaveResultRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fullBodyimage,
      String upperBodyImage,
      String studentIdCardImage,
      CommonEvaluationResultModel result});

  @override
  $CommonEvaluationResultModelCopyWith<$Res> get result;
}

/// @nodoc
class __$$_SaveResultRequestModelCopyWithImpl<$Res>
    extends _$SaveResultRequestModelCopyWithImpl<$Res,
        _$_SaveResultRequestModel>
    implements _$$_SaveResultRequestModelCopyWith<$Res> {
  __$$_SaveResultRequestModelCopyWithImpl(_$_SaveResultRequestModel _value,
      $Res Function(_$_SaveResultRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullBodyimage = null,
    Object? upperBodyImage = null,
    Object? studentIdCardImage = null,
    Object? result = null,
  }) {
    return _then(_$_SaveResultRequestModel(
      fullBodyimage: null == fullBodyimage
          ? _value.fullBodyimage
          : fullBodyimage // ignore: cast_nullable_to_non_nullable
              as String,
      upperBodyImage: null == upperBodyImage
          ? _value.upperBodyImage
          : upperBodyImage // ignore: cast_nullable_to_non_nullable
              as String,
      studentIdCardImage: null == studentIdCardImage
          ? _value.studentIdCardImage
          : studentIdCardImage // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as CommonEvaluationResultModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SaveResultRequestModel implements _SaveResultRequestModel {
  _$_SaveResultRequestModel(
      {required this.fullBodyimage,
      required this.upperBodyImage,
      required this.studentIdCardImage,
      required this.result});

  factory _$_SaveResultRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_SaveResultRequestModelFromJson(json);

  @override
  final String fullBodyimage;
  @override
  final String upperBodyImage;
  @override
  final String studentIdCardImage;
  @override
  final CommonEvaluationResultModel result;

  @override
  String toString() {
    return 'SaveResultRequestModel(fullBodyimage: $fullBodyimage, upperBodyImage: $upperBodyImage, studentIdCardImage: $studentIdCardImage, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveResultRequestModel &&
            (identical(other.fullBodyimage, fullBodyimage) ||
                other.fullBodyimage == fullBodyimage) &&
            (identical(other.upperBodyImage, upperBodyImage) ||
                other.upperBodyImage == upperBodyImage) &&
            (identical(other.studentIdCardImage, studentIdCardImage) ||
                other.studentIdCardImage == studentIdCardImage) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, fullBodyimage, upperBodyImage, studentIdCardImage, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveResultRequestModelCopyWith<_$_SaveResultRequestModel> get copyWith =>
      __$$_SaveResultRequestModelCopyWithImpl<_$_SaveResultRequestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaveResultRequestModelToJson(
      this,
    );
  }
}

abstract class _SaveResultRequestModel implements SaveResultRequestModel {
  factory _SaveResultRequestModel(
          {required final String fullBodyimage,
          required final String upperBodyImage,
          required final String studentIdCardImage,
          required final CommonEvaluationResultModel result}) =
      _$_SaveResultRequestModel;

  factory _SaveResultRequestModel.fromJson(Map<String, dynamic> json) =
      _$_SaveResultRequestModel.fromJson;

  @override
  String get fullBodyimage;
  @override
  String get upperBodyImage;
  @override
  String get studentIdCardImage;
  @override
  CommonEvaluationResultModel get result;
  @override
  @JsonKey(ignore: true)
  _$$_SaveResultRequestModelCopyWith<_$_SaveResultRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
