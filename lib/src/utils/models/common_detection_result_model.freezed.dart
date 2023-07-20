// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_detection_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommonDetectionResultModel _$CommonDetectionResultModelFromJson(
    Map<String, dynamic> json) {
  return _CommonDetectionResultModel.fromJson(json);
}

/// @nodoc
mixin _$CommonDetectionResultModel {
  bool get isPassed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonDetectionResultModelCopyWith<CommonDetectionResultModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonDetectionResultModelCopyWith<$Res> {
  factory $CommonDetectionResultModelCopyWith(CommonDetectionResultModel value,
          $Res Function(CommonDetectionResultModel) then) =
      _$CommonDetectionResultModelCopyWithImpl<$Res,
          CommonDetectionResultModel>;
  @useResult
  $Res call({bool isPassed});
}

/// @nodoc
class _$CommonDetectionResultModelCopyWithImpl<$Res,
        $Val extends CommonDetectionResultModel>
    implements $CommonDetectionResultModelCopyWith<$Res> {
  _$CommonDetectionResultModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_CommonDetectionResultModelCopyWith<$Res>
    implements $CommonDetectionResultModelCopyWith<$Res> {
  factory _$$_CommonDetectionResultModelCopyWith(
          _$_CommonDetectionResultModel value,
          $Res Function(_$_CommonDetectionResultModel) then) =
      __$$_CommonDetectionResultModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPassed});
}

/// @nodoc
class __$$_CommonDetectionResultModelCopyWithImpl<$Res>
    extends _$CommonDetectionResultModelCopyWithImpl<$Res,
        _$_CommonDetectionResultModel>
    implements _$$_CommonDetectionResultModelCopyWith<$Res> {
  __$$_CommonDetectionResultModelCopyWithImpl(
      _$_CommonDetectionResultModel _value,
      $Res Function(_$_CommonDetectionResultModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPassed = null,
  }) {
    return _then(_$_CommonDetectionResultModel(
      isPassed: null == isPassed
          ? _value.isPassed
          : isPassed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommonDetectionResultModel implements _CommonDetectionResultModel {
  _$_CommonDetectionResultModel({required this.isPassed});

  factory _$_CommonDetectionResultModel.fromJson(Map<String, dynamic> json) =>
      _$$_CommonDetectionResultModelFromJson(json);

  @override
  final bool isPassed;

  @override
  String toString() {
    return 'CommonDetectionResultModel(isPassed: $isPassed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommonDetectionResultModel &&
            (identical(other.isPassed, isPassed) ||
                other.isPassed == isPassed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isPassed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommonDetectionResultModelCopyWith<_$_CommonDetectionResultModel>
      get copyWith => __$$_CommonDetectionResultModelCopyWithImpl<
          _$_CommonDetectionResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommonDetectionResultModelToJson(
      this,
    );
  }
}

abstract class _CommonDetectionResultModel
    implements CommonDetectionResultModel {
  factory _CommonDetectionResultModel({required final bool isPassed}) =
      _$_CommonDetectionResultModel;

  factory _CommonDetectionResultModel.fromJson(Map<String, dynamic> json) =
      _$_CommonDetectionResultModel.fromJson;

  @override
  bool get isPassed;
  @override
  @JsonKey(ignore: true)
  _$$_CommonDetectionResultModelCopyWith<_$_CommonDetectionResultModel>
      get copyWith => throw _privateConstructorUsedError;
}
