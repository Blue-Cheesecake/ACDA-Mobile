// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detection_request_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetectionRequestBodyModel _$DetectionRequestBodyModelFromJson(
    Map<String, dynamic> json) {
  return _DetectionRequestBodyModel.fromJson(json);
}

/// @nodoc
mixin _$DetectionRequestBodyModel {
  String get bodyImage => throw _privateConstructorUsedError;
  String get bottomImage => throw _privateConstructorUsedError;
  String get shosesImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetectionRequestBodyModelCopyWith<DetectionRequestBodyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetectionRequestBodyModelCopyWith<$Res> {
  factory $DetectionRequestBodyModelCopyWith(DetectionRequestBodyModel value,
          $Res Function(DetectionRequestBodyModel) then) =
      _$DetectionRequestBodyModelCopyWithImpl<$Res, DetectionRequestBodyModel>;
  @useResult
  $Res call({String bodyImage, String bottomImage, String shosesImage});
}

/// @nodoc
class _$DetectionRequestBodyModelCopyWithImpl<$Res,
        $Val extends DetectionRequestBodyModel>
    implements $DetectionRequestBodyModelCopyWith<$Res> {
  _$DetectionRequestBodyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bodyImage = null,
    Object? bottomImage = null,
    Object? shosesImage = null,
  }) {
    return _then(_value.copyWith(
      bodyImage: null == bodyImage
          ? _value.bodyImage
          : bodyImage // ignore: cast_nullable_to_non_nullable
              as String,
      bottomImage: null == bottomImage
          ? _value.bottomImage
          : bottomImage // ignore: cast_nullable_to_non_nullable
              as String,
      shosesImage: null == shosesImage
          ? _value.shosesImage
          : shosesImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetectionRequestBodyModelCopyWith<$Res>
    implements $DetectionRequestBodyModelCopyWith<$Res> {
  factory _$$_DetectionRequestBodyModelCopyWith(
          _$_DetectionRequestBodyModel value,
          $Res Function(_$_DetectionRequestBodyModel) then) =
      __$$_DetectionRequestBodyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String bodyImage, String bottomImage, String shosesImage});
}

/// @nodoc
class __$$_DetectionRequestBodyModelCopyWithImpl<$Res>
    extends _$DetectionRequestBodyModelCopyWithImpl<$Res,
        _$_DetectionRequestBodyModel>
    implements _$$_DetectionRequestBodyModelCopyWith<$Res> {
  __$$_DetectionRequestBodyModelCopyWithImpl(
      _$_DetectionRequestBodyModel _value,
      $Res Function(_$_DetectionRequestBodyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bodyImage = null,
    Object? bottomImage = null,
    Object? shosesImage = null,
  }) {
    return _then(_$_DetectionRequestBodyModel(
      bodyImage: null == bodyImage
          ? _value.bodyImage
          : bodyImage // ignore: cast_nullable_to_non_nullable
              as String,
      bottomImage: null == bottomImage
          ? _value.bottomImage
          : bottomImage // ignore: cast_nullable_to_non_nullable
              as String,
      shosesImage: null == shosesImage
          ? _value.shosesImage
          : shosesImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetectionRequestBodyModel implements _DetectionRequestBodyModel {
  _$_DetectionRequestBodyModel(
      {required this.bodyImage,
      required this.bottomImage,
      required this.shosesImage});

  factory _$_DetectionRequestBodyModel.fromJson(Map<String, dynamic> json) =>
      _$$_DetectionRequestBodyModelFromJson(json);

  @override
  final String bodyImage;
  @override
  final String bottomImage;
  @override
  final String shosesImage;

  @override
  String toString() {
    return 'DetectionRequestBodyModel(bodyImage: $bodyImage, bottomImage: $bottomImage, shosesImage: $shosesImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetectionRequestBodyModel &&
            (identical(other.bodyImage, bodyImage) ||
                other.bodyImage == bodyImage) &&
            (identical(other.bottomImage, bottomImage) ||
                other.bottomImage == bottomImage) &&
            (identical(other.shosesImage, shosesImage) ||
                other.shosesImage == shosesImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, bodyImage, bottomImage, shosesImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetectionRequestBodyModelCopyWith<_$_DetectionRequestBodyModel>
      get copyWith => __$$_DetectionRequestBodyModelCopyWithImpl<
          _$_DetectionRequestBodyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetectionRequestBodyModelToJson(
      this,
    );
  }
}

abstract class _DetectionRequestBodyModel implements DetectionRequestBodyModel {
  factory _DetectionRequestBodyModel(
      {required final String bodyImage,
      required final String bottomImage,
      required final String shosesImage}) = _$_DetectionRequestBodyModel;

  factory _DetectionRequestBodyModel.fromJson(Map<String, dynamic> json) =
      _$_DetectionRequestBodyModel.fromJson;

  @override
  String get bodyImage;
  @override
  String get bottomImage;
  @override
  String get shosesImage;
  @override
  @JsonKey(ignore: true)
  _$$_DetectionRequestBodyModelCopyWith<_$_DetectionRequestBodyModel>
      get copyWith => throw _privateConstructorUsedError;
}
