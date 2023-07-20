// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_record_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommonRecordModel {
  String get label => throw _privateConstructorUsedError;
  String get bodyImageBase64 => throw _privateConstructorUsedError;
  String get bottomImageBase64 => throw _privateConstructorUsedError;
  String get shoesImageBase64 => throw _privateConstructorUsedError;
  ICommonDetectionResultEntity get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommonRecordModelCopyWith<CommonRecordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonRecordModelCopyWith<$Res> {
  factory $CommonRecordModelCopyWith(
          CommonRecordModel value, $Res Function(CommonRecordModel) then) =
      _$CommonRecordModelCopyWithImpl<$Res, CommonRecordModel>;
  @useResult
  $Res call(
      {String label,
      String bodyImageBase64,
      String bottomImageBase64,
      String shoesImageBase64,
      ICommonDetectionResultEntity result});
}

/// @nodoc
class _$CommonRecordModelCopyWithImpl<$Res, $Val extends CommonRecordModel>
    implements $CommonRecordModelCopyWith<$Res> {
  _$CommonRecordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? bodyImageBase64 = null,
    Object? bottomImageBase64 = null,
    Object? shoesImageBase64 = null,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      bodyImageBase64: null == bodyImageBase64
          ? _value.bodyImageBase64
          : bodyImageBase64 // ignore: cast_nullable_to_non_nullable
              as String,
      bottomImageBase64: null == bottomImageBase64
          ? _value.bottomImageBase64
          : bottomImageBase64 // ignore: cast_nullable_to_non_nullable
              as String,
      shoesImageBase64: null == shoesImageBase64
          ? _value.shoesImageBase64
          : shoesImageBase64 // ignore: cast_nullable_to_non_nullable
              as String,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ICommonDetectionResultEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommonRecordModelCopyWith<$Res>
    implements $CommonRecordModelCopyWith<$Res> {
  factory _$$_CommonRecordModelCopyWith(_$_CommonRecordModel value,
          $Res Function(_$_CommonRecordModel) then) =
      __$$_CommonRecordModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String label,
      String bodyImageBase64,
      String bottomImageBase64,
      String shoesImageBase64,
      ICommonDetectionResultEntity result});
}

/// @nodoc
class __$$_CommonRecordModelCopyWithImpl<$Res>
    extends _$CommonRecordModelCopyWithImpl<$Res, _$_CommonRecordModel>
    implements _$$_CommonRecordModelCopyWith<$Res> {
  __$$_CommonRecordModelCopyWithImpl(
      _$_CommonRecordModel _value, $Res Function(_$_CommonRecordModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? bodyImageBase64 = null,
    Object? bottomImageBase64 = null,
    Object? shoesImageBase64 = null,
    Object? result = freezed,
  }) {
    return _then(_$_CommonRecordModel(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      bodyImageBase64: null == bodyImageBase64
          ? _value.bodyImageBase64
          : bodyImageBase64 // ignore: cast_nullable_to_non_nullable
              as String,
      bottomImageBase64: null == bottomImageBase64
          ? _value.bottomImageBase64
          : bottomImageBase64 // ignore: cast_nullable_to_non_nullable
              as String,
      shoesImageBase64: null == shoesImageBase64
          ? _value.shoesImageBase64
          : shoesImageBase64 // ignore: cast_nullable_to_non_nullable
              as String,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ICommonDetectionResultEntity,
    ));
  }
}

/// @nodoc

class _$_CommonRecordModel implements _CommonRecordModel {
  _$_CommonRecordModel(
      {required this.label,
      required this.bodyImageBase64,
      required this.bottomImageBase64,
      required this.shoesImageBase64,
      required this.result});

  @override
  final String label;
  @override
  final String bodyImageBase64;
  @override
  final String bottomImageBase64;
  @override
  final String shoesImageBase64;
  @override
  final ICommonDetectionResultEntity result;

  @override
  String toString() {
    return 'CommonRecordModel(label: $label, bodyImageBase64: $bodyImageBase64, bottomImageBase64: $bottomImageBase64, shoesImageBase64: $shoesImageBase64, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommonRecordModel &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.bodyImageBase64, bodyImageBase64) ||
                other.bodyImageBase64 == bodyImageBase64) &&
            (identical(other.bottomImageBase64, bottomImageBase64) ||
                other.bottomImageBase64 == bottomImageBase64) &&
            (identical(other.shoesImageBase64, shoesImageBase64) ||
                other.shoesImageBase64 == shoesImageBase64) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      label,
      bodyImageBase64,
      bottomImageBase64,
      shoesImageBase64,
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommonRecordModelCopyWith<_$_CommonRecordModel> get copyWith =>
      __$$_CommonRecordModelCopyWithImpl<_$_CommonRecordModel>(
          this, _$identity);
}

abstract class _CommonRecordModel implements CommonRecordModel {
  factory _CommonRecordModel(
          {required final String label,
          required final String bodyImageBase64,
          required final String bottomImageBase64,
          required final String shoesImageBase64,
          required final ICommonDetectionResultEntity result}) =
      _$_CommonRecordModel;

  @override
  String get label;
  @override
  String get bodyImageBase64;
  @override
  String get bottomImageBase64;
  @override
  String get shoesImageBase64;
  @override
  ICommonDetectionResultEntity get result;
  @override
  @JsonKey(ignore: true)
  _$$_CommonRecordModelCopyWith<_$_CommonRecordModel> get copyWith =>
      throw _privateConstructorUsedError;
}
