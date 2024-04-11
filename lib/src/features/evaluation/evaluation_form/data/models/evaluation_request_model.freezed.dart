// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evaluation_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EvaluationRequestModel _$EvaluationRequestModelFromJson(
    Map<String, dynamic> json) {
  return _EvaluationRequestModel.fromJson(json);
}

/// @nodoc
mixin _$EvaluationRequestModel {
  String get fullBodyImage => throw _privateConstructorUsedError;
  String get upperBodyImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvaluationRequestModelCopyWith<EvaluationRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvaluationRequestModelCopyWith<$Res> {
  factory $EvaluationRequestModelCopyWith(EvaluationRequestModel value,
          $Res Function(EvaluationRequestModel) then) =
      _$EvaluationRequestModelCopyWithImpl<$Res, EvaluationRequestModel>;
  @useResult
  $Res call({String fullBodyImage, String upperBodyImage});
}

/// @nodoc
class _$EvaluationRequestModelCopyWithImpl<$Res,
        $Val extends EvaluationRequestModel>
    implements $EvaluationRequestModelCopyWith<$Res> {
  _$EvaluationRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullBodyImage = null,
    Object? upperBodyImage = null,
  }) {
    return _then(_value.copyWith(
      fullBodyImage: null == fullBodyImage
          ? _value.fullBodyImage
          : fullBodyImage // ignore: cast_nullable_to_non_nullable
              as String,
      upperBodyImage: null == upperBodyImage
          ? _value.upperBodyImage
          : upperBodyImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EvaluationRequestModelCopyWith<$Res>
    implements $EvaluationRequestModelCopyWith<$Res> {
  factory _$$_EvaluationRequestModelCopyWith(_$_EvaluationRequestModel value,
          $Res Function(_$_EvaluationRequestModel) then) =
      __$$_EvaluationRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fullBodyImage, String upperBodyImage});
}

/// @nodoc
class __$$_EvaluationRequestModelCopyWithImpl<$Res>
    extends _$EvaluationRequestModelCopyWithImpl<$Res,
        _$_EvaluationRequestModel>
    implements _$$_EvaluationRequestModelCopyWith<$Res> {
  __$$_EvaluationRequestModelCopyWithImpl(_$_EvaluationRequestModel _value,
      $Res Function(_$_EvaluationRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullBodyImage = null,
    Object? upperBodyImage = null,
  }) {
    return _then(_$_EvaluationRequestModel(
      fullBodyImage: null == fullBodyImage
          ? _value.fullBodyImage
          : fullBodyImage // ignore: cast_nullable_to_non_nullable
              as String,
      upperBodyImage: null == upperBodyImage
          ? _value.upperBodyImage
          : upperBodyImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EvaluationRequestModel implements _EvaluationRequestModel {
  _$_EvaluationRequestModel(
      {required this.fullBodyImage, required this.upperBodyImage});

  factory _$_EvaluationRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_EvaluationRequestModelFromJson(json);

  @override
  final String fullBodyImage;
  @override
  final String upperBodyImage;

  @override
  String toString() {
    return 'EvaluationRequestModel(fullBodyImage: $fullBodyImage, upperBodyImage: $upperBodyImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EvaluationRequestModel &&
            (identical(other.fullBodyImage, fullBodyImage) ||
                other.fullBodyImage == fullBodyImage) &&
            (identical(other.upperBodyImage, upperBodyImage) ||
                other.upperBodyImage == upperBodyImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullBodyImage, upperBodyImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EvaluationRequestModelCopyWith<_$_EvaluationRequestModel> get copyWith =>
      __$$_EvaluationRequestModelCopyWithImpl<_$_EvaluationRequestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EvaluationRequestModelToJson(
      this,
    );
  }
}

abstract class _EvaluationRequestModel implements EvaluationRequestModel {
  factory _EvaluationRequestModel(
      {required final String fullBodyImage,
      required final String upperBodyImage}) = _$_EvaluationRequestModel;

  factory _EvaluationRequestModel.fromJson(Map<String, dynamic> json) =
      _$_EvaluationRequestModel.fromJson;

  @override
  String get fullBodyImage;
  @override
  String get upperBodyImage;
  @override
  @JsonKey(ignore: true)
  _$$_EvaluationRequestModelCopyWith<_$_EvaluationRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
