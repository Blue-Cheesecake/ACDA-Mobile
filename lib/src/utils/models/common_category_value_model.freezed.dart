// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_category_value_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommonCategoryValueModel _$CommonCategoryValueModelFromJson(
    Map<String, dynamic> json) {
  return _CommonCategoryValueModel.fromJson(json);
}

/// @nodoc
mixin _$CommonCategoryValueModel {
  int get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonCategoryValueModelCopyWith<CommonCategoryValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonCategoryValueModelCopyWith<$Res> {
  factory $CommonCategoryValueModelCopyWith(CommonCategoryValueModel value,
          $Res Function(CommonCategoryValueModel) then) =
      _$CommonCategoryValueModelCopyWithImpl<$Res, CommonCategoryValueModel>;
  @useResult
  $Res call({int id, String value, String? description});
}

/// @nodoc
class _$CommonCategoryValueModelCopyWithImpl<$Res,
        $Val extends CommonCategoryValueModel>
    implements $CommonCategoryValueModelCopyWith<$Res> {
  _$CommonCategoryValueModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommonCategoryValueModelCopyWith<$Res>
    implements $CommonCategoryValueModelCopyWith<$Res> {
  factory _$$_CommonCategoryValueModelCopyWith(
          _$_CommonCategoryValueModel value,
          $Res Function(_$_CommonCategoryValueModel) then) =
      __$$_CommonCategoryValueModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String value, String? description});
}

/// @nodoc
class __$$_CommonCategoryValueModelCopyWithImpl<$Res>
    extends _$CommonCategoryValueModelCopyWithImpl<$Res,
        _$_CommonCategoryValueModel>
    implements _$$_CommonCategoryValueModelCopyWith<$Res> {
  __$$_CommonCategoryValueModelCopyWithImpl(_$_CommonCategoryValueModel _value,
      $Res Function(_$_CommonCategoryValueModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? description = freezed,
  }) {
    return _then(_$_CommonCategoryValueModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommonCategoryValueModel implements _CommonCategoryValueModel {
  _$_CommonCategoryValueModel(
      {required this.id, required this.value, this.description});

  factory _$_CommonCategoryValueModel.fromJson(Map<String, dynamic> json) =>
      _$$_CommonCategoryValueModelFromJson(json);

  @override
  final int id;
  @override
  final String value;
  @override
  final String? description;

  @override
  String toString() {
    return 'CommonCategoryValueModel(id: $id, value: $value, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommonCategoryValueModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, value, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommonCategoryValueModelCopyWith<_$_CommonCategoryValueModel>
      get copyWith => __$$_CommonCategoryValueModelCopyWithImpl<
          _$_CommonCategoryValueModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommonCategoryValueModelToJson(
      this,
    );
  }
}

abstract class _CommonCategoryValueModel implements CommonCategoryValueModel {
  factory _CommonCategoryValueModel(
      {required final int id,
      required final String value,
      final String? description}) = _$_CommonCategoryValueModel;

  factory _CommonCategoryValueModel.fromJson(Map<String, dynamic> json) =
      _$_CommonCategoryValueModel.fromJson;

  @override
  int get id;
  @override
  String get value;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_CommonCategoryValueModelCopyWith<_$_CommonCategoryValueModel>
      get copyWith => throw _privateConstructorUsedError;
}
