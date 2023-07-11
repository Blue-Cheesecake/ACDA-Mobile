// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detection_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetectionResultModel _$DetectionResultModelFromJson(Map<String, dynamic> json) {
  return _DetectionResultModel.fromJson(json);
}

/// @nodoc
mixin _$DetectionResultModel {
  bool get isPassed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetectionResultModelCopyWith<DetectionResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetectionResultModelCopyWith<$Res> {
  factory $DetectionResultModelCopyWith(DetectionResultModel value,
          $Res Function(DetectionResultModel) then) =
      _$DetectionResultModelCopyWithImpl<$Res, DetectionResultModel>;
  @useResult
  $Res call({bool isPassed});
}

/// @nodoc
class _$DetectionResultModelCopyWithImpl<$Res,
        $Val extends DetectionResultModel>
    implements $DetectionResultModelCopyWith<$Res> {
  _$DetectionResultModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_DetectionResultModelCopyWith<$Res>
    implements $DetectionResultModelCopyWith<$Res> {
  factory _$$_DetectionResultModelCopyWith(_$_DetectionResultModel value,
          $Res Function(_$_DetectionResultModel) then) =
      __$$_DetectionResultModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPassed});
}

/// @nodoc
class __$$_DetectionResultModelCopyWithImpl<$Res>
    extends _$DetectionResultModelCopyWithImpl<$Res, _$_DetectionResultModel>
    implements _$$_DetectionResultModelCopyWith<$Res> {
  __$$_DetectionResultModelCopyWithImpl(_$_DetectionResultModel _value,
      $Res Function(_$_DetectionResultModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPassed = null,
  }) {
    return _then(_$_DetectionResultModel(
      isPassed: null == isPassed
          ? _value.isPassed
          : isPassed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetectionResultModel implements _DetectionResultModel {
  _$_DetectionResultModel({required this.isPassed});

  factory _$_DetectionResultModel.fromJson(Map<String, dynamic> json) =>
      _$$_DetectionResultModelFromJson(json);

  @override
  final bool isPassed;

  @override
  String toString() {
    return 'DetectionResultModel(isPassed: $isPassed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetectionResultModel &&
            (identical(other.isPassed, isPassed) ||
                other.isPassed == isPassed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isPassed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetectionResultModelCopyWith<_$_DetectionResultModel> get copyWith =>
      __$$_DetectionResultModelCopyWithImpl<_$_DetectionResultModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetectionResultModelToJson(
      this,
    );
  }
}

abstract class _DetectionResultModel implements DetectionResultModel {
  factory _DetectionResultModel({required final bool isPassed}) =
      _$_DetectionResultModel;

  factory _DetectionResultModel.fromJson(Map<String, dynamic> json) =
      _$_DetectionResultModel.fromJson;

  @override
  bool get isPassed;
  @override
  @JsonKey(ignore: true)
  _$$_DetectionResultModelCopyWith<_$_DetectionResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}
