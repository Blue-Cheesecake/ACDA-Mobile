// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_existence_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailExistenceModel _$EmailExistenceModelFromJson(Map<String, dynamic> json) {
  return _EmailExistenceModel.fromJson(json);
}

/// @nodoc
mixin _$EmailExistenceModel {
  bool get isExistent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailExistenceModelCopyWith<EmailExistenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailExistenceModelCopyWith<$Res> {
  factory $EmailExistenceModelCopyWith(
          EmailExistenceModel value, $Res Function(EmailExistenceModel) then) =
      _$EmailExistenceModelCopyWithImpl<$Res, EmailExistenceModel>;
  @useResult
  $Res call({bool isExistent});
}

/// @nodoc
class _$EmailExistenceModelCopyWithImpl<$Res, $Val extends EmailExistenceModel>
    implements $EmailExistenceModelCopyWith<$Res> {
  _$EmailExistenceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExistent = null,
  }) {
    return _then(_value.copyWith(
      isExistent: null == isExistent
          ? _value.isExistent
          : isExistent // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmailExistenceModelCopyWith<$Res>
    implements $EmailExistenceModelCopyWith<$Res> {
  factory _$$_EmailExistenceModelCopyWith(_$_EmailExistenceModel value,
          $Res Function(_$_EmailExistenceModel) then) =
      __$$_EmailExistenceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isExistent});
}

/// @nodoc
class __$$_EmailExistenceModelCopyWithImpl<$Res>
    extends _$EmailExistenceModelCopyWithImpl<$Res, _$_EmailExistenceModel>
    implements _$$_EmailExistenceModelCopyWith<$Res> {
  __$$_EmailExistenceModelCopyWithImpl(_$_EmailExistenceModel _value,
      $Res Function(_$_EmailExistenceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExistent = null,
  }) {
    return _then(_$_EmailExistenceModel(
      isExistent: null == isExistent
          ? _value.isExistent
          : isExistent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmailExistenceModel implements _EmailExistenceModel {
  _$_EmailExistenceModel({required this.isExistent});

  factory _$_EmailExistenceModel.fromJson(Map<String, dynamic> json) =>
      _$$_EmailExistenceModelFromJson(json);

  @override
  final bool isExistent;

  @override
  String toString() {
    return 'EmailExistenceModel(isExistent: $isExistent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailExistenceModel &&
            (identical(other.isExistent, isExistent) ||
                other.isExistent == isExistent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isExistent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailExistenceModelCopyWith<_$_EmailExistenceModel> get copyWith =>
      __$$_EmailExistenceModelCopyWithImpl<_$_EmailExistenceModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmailExistenceModelToJson(
      this,
    );
  }
}

abstract class _EmailExistenceModel implements EmailExistenceModel {
  factory _EmailExistenceModel({required final bool isExistent}) =
      _$_EmailExistenceModel;

  factory _EmailExistenceModel.fromJson(Map<String, dynamic> json) =
      _$_EmailExistenceModel.fromJson;

  @override
  bool get isExistent;
  @override
  @JsonKey(ignore: true)
  _$$_EmailExistenceModelCopyWith<_$_EmailExistenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
