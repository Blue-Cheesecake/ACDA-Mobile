// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'face_validation_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FaceValidationRequestModel _$FaceValidationRequestModelFromJson(
    Map<String, dynamic> json) {
  return _FaceValidationRequestModel.fromJson(json);
}

/// @nodoc
mixin _$FaceValidationRequestModel {
  String get faceImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaceValidationRequestModelCopyWith<FaceValidationRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaceValidationRequestModelCopyWith<$Res> {
  factory $FaceValidationRequestModelCopyWith(FaceValidationRequestModel value,
          $Res Function(FaceValidationRequestModel) then) =
      _$FaceValidationRequestModelCopyWithImpl<$Res,
          FaceValidationRequestModel>;
  @useResult
  $Res call({String faceImage});
}

/// @nodoc
class _$FaceValidationRequestModelCopyWithImpl<$Res,
        $Val extends FaceValidationRequestModel>
    implements $FaceValidationRequestModelCopyWith<$Res> {
  _$FaceValidationRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? faceImage = null,
  }) {
    return _then(_value.copyWith(
      faceImage: null == faceImage
          ? _value.faceImage
          : faceImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FaceValidationRequestModelCopyWith<$Res>
    implements $FaceValidationRequestModelCopyWith<$Res> {
  factory _$$_FaceValidationRequestModelCopyWith(
          _$_FaceValidationRequestModel value,
          $Res Function(_$_FaceValidationRequestModel) then) =
      __$$_FaceValidationRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String faceImage});
}

/// @nodoc
class __$$_FaceValidationRequestModelCopyWithImpl<$Res>
    extends _$FaceValidationRequestModelCopyWithImpl<$Res,
        _$_FaceValidationRequestModel>
    implements _$$_FaceValidationRequestModelCopyWith<$Res> {
  __$$_FaceValidationRequestModelCopyWithImpl(
      _$_FaceValidationRequestModel _value,
      $Res Function(_$_FaceValidationRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? faceImage = null,
  }) {
    return _then(_$_FaceValidationRequestModel(
      faceImage: null == faceImage
          ? _value.faceImage
          : faceImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FaceValidationRequestModel implements _FaceValidationRequestModel {
  _$_FaceValidationRequestModel({required this.faceImage});

  factory _$_FaceValidationRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_FaceValidationRequestModelFromJson(json);

  @override
  final String faceImage;

  @override
  String toString() {
    return 'FaceValidationRequestModel(faceImage: $faceImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FaceValidationRequestModel &&
            (identical(other.faceImage, faceImage) ||
                other.faceImage == faceImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, faceImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FaceValidationRequestModelCopyWith<_$_FaceValidationRequestModel>
      get copyWith => __$$_FaceValidationRequestModelCopyWithImpl<
          _$_FaceValidationRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FaceValidationRequestModelToJson(
      this,
    );
  }
}

abstract class _FaceValidationRequestModel
    implements FaceValidationRequestModel {
  factory _FaceValidationRequestModel({required final String faceImage}) =
      _$_FaceValidationRequestModel;

  factory _FaceValidationRequestModel.fromJson(Map<String, dynamic> json) =
      _$_FaceValidationRequestModel.fromJson;

  @override
  String get faceImage;
  @override
  @JsonKey(ignore: true)
  _$$_FaceValidationRequestModelCopyWith<_$_FaceValidationRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}
