// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_validation_request_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageValidationRequestBodyModel _$ImageValidationRequestBodyModelFromJson(
    Map<String, dynamic> json) {
  return _ImageValidationRequestBodyModel.fromJson(json);
}

/// @nodoc
mixin _$ImageValidationRequestBodyModel {
// Base64 String
  String get image => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageValidationRequestBodyModelCopyWith<ImageValidationRequestBodyModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageValidationRequestBodyModelCopyWith<$Res> {
  factory $ImageValidationRequestBodyModelCopyWith(
          ImageValidationRequestBodyModel value,
          $Res Function(ImageValidationRequestBodyModel) then) =
      _$ImageValidationRequestBodyModelCopyWithImpl<$Res,
          ImageValidationRequestBodyModel>;
  @useResult
  $Res call({String image, String category});
}

/// @nodoc
class _$ImageValidationRequestBodyModelCopyWithImpl<$Res,
        $Val extends ImageValidationRequestBodyModel>
    implements $ImageValidationRequestBodyModelCopyWith<$Res> {
  _$ImageValidationRequestBodyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageValidationRequestBodyModelCopyWith<$Res>
    implements $ImageValidationRequestBodyModelCopyWith<$Res> {
  factory _$$_ImageValidationRequestBodyModelCopyWith(
          _$_ImageValidationRequestBodyModel value,
          $Res Function(_$_ImageValidationRequestBodyModel) then) =
      __$$_ImageValidationRequestBodyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String image, String category});
}

/// @nodoc
class __$$_ImageValidationRequestBodyModelCopyWithImpl<$Res>
    extends _$ImageValidationRequestBodyModelCopyWithImpl<$Res,
        _$_ImageValidationRequestBodyModel>
    implements _$$_ImageValidationRequestBodyModelCopyWith<$Res> {
  __$$_ImageValidationRequestBodyModelCopyWithImpl(
      _$_ImageValidationRequestBodyModel _value,
      $Res Function(_$_ImageValidationRequestBodyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? category = null,
  }) {
    return _then(_$_ImageValidationRequestBodyModel(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageValidationRequestBodyModel
    implements _ImageValidationRequestBodyModel {
  _$_ImageValidationRequestBodyModel(
      {required this.image, required this.category});

  factory _$_ImageValidationRequestBodyModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_ImageValidationRequestBodyModelFromJson(json);

// Base64 String
  @override
  final String image;
  @override
  final String category;

  @override
  String toString() {
    return 'ImageValidationRequestBodyModel(image: $image, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageValidationRequestBodyModel &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, image, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageValidationRequestBodyModelCopyWith<
          _$_ImageValidationRequestBodyModel>
      get copyWith => __$$_ImageValidationRequestBodyModelCopyWithImpl<
          _$_ImageValidationRequestBodyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageValidationRequestBodyModelToJson(
      this,
    );
  }
}

abstract class _ImageValidationRequestBodyModel
    implements ImageValidationRequestBodyModel {
  factory _ImageValidationRequestBodyModel(
      {required final String image,
      required final String category}) = _$_ImageValidationRequestBodyModel;

  factory _ImageValidationRequestBodyModel.fromJson(Map<String, dynamic> json) =
      _$_ImageValidationRequestBodyModel.fromJson;

  @override // Base64 String
  String get image;
  @override
  String get category;
  @override
  @JsonKey(ignore: true)
  _$$_ImageValidationRequestBodyModelCopyWith<
          _$_ImageValidationRequestBodyModel>
      get copyWith => throw _privateConstructorUsedError;
}
