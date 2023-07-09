// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_validation_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageValidationResultModel _$ImageValidationResultModelFromJson(
    Map<String, dynamic> json) {
  return _ImageValidationResultModel.fromJson(json);
}

/// @nodoc
mixin _$ImageValidationResultModel {
  bool get isPassed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageValidationResultModelCopyWith<ImageValidationResultModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageValidationResultModelCopyWith<$Res> {
  factory $ImageValidationResultModelCopyWith(ImageValidationResultModel value,
          $Res Function(ImageValidationResultModel) then) =
      _$ImageValidationResultModelCopyWithImpl<$Res,
          ImageValidationResultModel>;
  @useResult
  $Res call({bool isPassed});
}

/// @nodoc
class _$ImageValidationResultModelCopyWithImpl<$Res,
        $Val extends ImageValidationResultModel>
    implements $ImageValidationResultModelCopyWith<$Res> {
  _$ImageValidationResultModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_ImageValidationResultModelCopyWith<$Res>
    implements $ImageValidationResultModelCopyWith<$Res> {
  factory _$$_ImageValidationResultModelCopyWith(
          _$_ImageValidationResultModel value,
          $Res Function(_$_ImageValidationResultModel) then) =
      __$$_ImageValidationResultModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPassed});
}

/// @nodoc
class __$$_ImageValidationResultModelCopyWithImpl<$Res>
    extends _$ImageValidationResultModelCopyWithImpl<$Res,
        _$_ImageValidationResultModel>
    implements _$$_ImageValidationResultModelCopyWith<$Res> {
  __$$_ImageValidationResultModelCopyWithImpl(
      _$_ImageValidationResultModel _value,
      $Res Function(_$_ImageValidationResultModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPassed = null,
  }) {
    return _then(_$_ImageValidationResultModel(
      isPassed: null == isPassed
          ? _value.isPassed
          : isPassed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageValidationResultModel implements _ImageValidationResultModel {
  _$_ImageValidationResultModel({required this.isPassed});

  factory _$_ImageValidationResultModel.fromJson(Map<String, dynamic> json) =>
      _$$_ImageValidationResultModelFromJson(json);

  @override
  final bool isPassed;

  @override
  String toString() {
    return 'ImageValidationResultModel(isPassed: $isPassed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageValidationResultModel &&
            (identical(other.isPassed, isPassed) ||
                other.isPassed == isPassed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isPassed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageValidationResultModelCopyWith<_$_ImageValidationResultModel>
      get copyWith => __$$_ImageValidationResultModelCopyWithImpl<
          _$_ImageValidationResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageValidationResultModelToJson(
      this,
    );
  }
}

abstract class _ImageValidationResultModel
    implements ImageValidationResultModel {
  factory _ImageValidationResultModel({required final bool isPassed}) =
      _$_ImageValidationResultModel;

  factory _ImageValidationResultModel.fromJson(Map<String, dynamic> json) =
      _$_ImageValidationResultModel.fromJson;

  @override
  bool get isPassed;
  @override
  @JsonKey(ignore: true)
  _$$_ImageValidationResultModelCopyWith<_$_ImageValidationResultModel>
      get copyWith => throw _privateConstructorUsedError;
}
