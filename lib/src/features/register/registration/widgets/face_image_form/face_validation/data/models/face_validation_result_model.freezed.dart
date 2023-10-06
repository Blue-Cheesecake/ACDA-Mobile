// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'face_validation_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FaceValidationResultModel _$FaceValidationResultModelFromJson(
    Map<String, dynamic> json) {
  return _FaceValidationResultModel.fromJson(json);
}

/// @nodoc
mixin _$FaceValidationResultModel {
  bool get isPassed => throw _privateConstructorUsedError;
  String? get croppedFaceImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaceValidationResultModelCopyWith<FaceValidationResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaceValidationResultModelCopyWith<$Res> {
  factory $FaceValidationResultModelCopyWith(FaceValidationResultModel value,
          $Res Function(FaceValidationResultModel) then) =
      _$FaceValidationResultModelCopyWithImpl<$Res, FaceValidationResultModel>;
  @useResult
  $Res call({bool isPassed, String? croppedFaceImage});
}

/// @nodoc
class _$FaceValidationResultModelCopyWithImpl<$Res,
        $Val extends FaceValidationResultModel>
    implements $FaceValidationResultModelCopyWith<$Res> {
  _$FaceValidationResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPassed = null,
    Object? croppedFaceImage = freezed,
  }) {
    return _then(_value.copyWith(
      isPassed: null == isPassed
          ? _value.isPassed
          : isPassed // ignore: cast_nullable_to_non_nullable
              as bool,
      croppedFaceImage: freezed == croppedFaceImage
          ? _value.croppedFaceImage
          : croppedFaceImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FaceValidationResultModelCopyWith<$Res>
    implements $FaceValidationResultModelCopyWith<$Res> {
  factory _$$_FaceValidationResultModelCopyWith(
          _$_FaceValidationResultModel value,
          $Res Function(_$_FaceValidationResultModel) then) =
      __$$_FaceValidationResultModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPassed, String? croppedFaceImage});
}

/// @nodoc
class __$$_FaceValidationResultModelCopyWithImpl<$Res>
    extends _$FaceValidationResultModelCopyWithImpl<$Res,
        _$_FaceValidationResultModel>
    implements _$$_FaceValidationResultModelCopyWith<$Res> {
  __$$_FaceValidationResultModelCopyWithImpl(
      _$_FaceValidationResultModel _value,
      $Res Function(_$_FaceValidationResultModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPassed = null,
    Object? croppedFaceImage = freezed,
  }) {
    return _then(_$_FaceValidationResultModel(
      isPassed: null == isPassed
          ? _value.isPassed
          : isPassed // ignore: cast_nullable_to_non_nullable
              as bool,
      croppedFaceImage: freezed == croppedFaceImage
          ? _value.croppedFaceImage
          : croppedFaceImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FaceValidationResultModel implements _FaceValidationResultModel {
  _$_FaceValidationResultModel(
      {required this.isPassed, required this.croppedFaceImage});

  factory _$_FaceValidationResultModel.fromJson(Map<String, dynamic> json) =>
      _$$_FaceValidationResultModelFromJson(json);

  @override
  final bool isPassed;
  @override
  final String? croppedFaceImage;

  @override
  String toString() {
    return 'FaceValidationResultModel(isPassed: $isPassed, croppedFaceImage: $croppedFaceImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FaceValidationResultModel &&
            (identical(other.isPassed, isPassed) ||
                other.isPassed == isPassed) &&
            (identical(other.croppedFaceImage, croppedFaceImage) ||
                other.croppedFaceImage == croppedFaceImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isPassed, croppedFaceImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FaceValidationResultModelCopyWith<_$_FaceValidationResultModel>
      get copyWith => __$$_FaceValidationResultModelCopyWithImpl<
          _$_FaceValidationResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FaceValidationResultModelToJson(
      this,
    );
  }
}

abstract class _FaceValidationResultModel implements FaceValidationResultModel {
  factory _FaceValidationResultModel(
      {required final bool isPassed,
      required final String? croppedFaceImage}) = _$_FaceValidationResultModel;

  factory _FaceValidationResultModel.fromJson(Map<String, dynamic> json) =
      _$_FaceValidationResultModel.fromJson;

  @override
  bool get isPassed;
  @override
  String? get croppedFaceImage;
  @override
  @JsonKey(ignore: true)
  _$$_FaceValidationResultModelCopyWith<_$_FaceValidationResultModel>
      get copyWith => throw _privateConstructorUsedError;
}
