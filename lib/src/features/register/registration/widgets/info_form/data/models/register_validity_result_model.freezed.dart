// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_validity_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterValidityResultModel _$RegisterValidityResultModelFromJson(
    Map<String, dynamic> json) {
  return _RegisterValidityResultModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterValidityResultModel {
  bool get isValid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterValidityResultModelCopyWith<RegisterValidityResultModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterValidityResultModelCopyWith<$Res> {
  factory $RegisterValidityResultModelCopyWith(
          RegisterValidityResultModel value,
          $Res Function(RegisterValidityResultModel) then) =
      _$RegisterValidityResultModelCopyWithImpl<$Res,
          RegisterValidityResultModel>;
  @useResult
  $Res call({bool isValid});
}

/// @nodoc
class _$RegisterValidityResultModelCopyWithImpl<$Res,
        $Val extends RegisterValidityResultModel>
    implements $RegisterValidityResultModelCopyWith<$Res> {
  _$RegisterValidityResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterValidityResultModelCopyWith<$Res>
    implements $RegisterValidityResultModelCopyWith<$Res> {
  factory _$$_RegisterValidityResultModelCopyWith(
          _$_RegisterValidityResultModel value,
          $Res Function(_$_RegisterValidityResultModel) then) =
      __$$_RegisterValidityResultModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isValid});
}

/// @nodoc
class __$$_RegisterValidityResultModelCopyWithImpl<$Res>
    extends _$RegisterValidityResultModelCopyWithImpl<$Res,
        _$_RegisterValidityResultModel>
    implements _$$_RegisterValidityResultModelCopyWith<$Res> {
  __$$_RegisterValidityResultModelCopyWithImpl(
      _$_RegisterValidityResultModel _value,
      $Res Function(_$_RegisterValidityResultModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
  }) {
    return _then(_$_RegisterValidityResultModel(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterValidityResultModel implements _RegisterValidityResultModel {
  _$_RegisterValidityResultModel({required this.isValid});

  factory _$_RegisterValidityResultModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterValidityResultModelFromJson(json);

  @override
  final bool isValid;

  @override
  String toString() {
    return 'RegisterValidityResultModel(isValid: $isValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterValidityResultModel &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterValidityResultModelCopyWith<_$_RegisterValidityResultModel>
      get copyWith => __$$_RegisterValidityResultModelCopyWithImpl<
          _$_RegisterValidityResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterValidityResultModelToJson(
      this,
    );
  }
}

abstract class _RegisterValidityResultModel
    implements RegisterValidityResultModel {
  factory _RegisterValidityResultModel({required final bool isValid}) =
      _$_RegisterValidityResultModel;

  factory _RegisterValidityResultModel.fromJson(Map<String, dynamic> json) =
      _$_RegisterValidityResultModel.fromJson;

  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterValidityResultModelCopyWith<_$_RegisterValidityResultModel>
      get copyWith => throw _privateConstructorUsedError;
}
