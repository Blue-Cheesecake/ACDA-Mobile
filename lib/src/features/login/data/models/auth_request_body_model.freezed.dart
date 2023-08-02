// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_request_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthRequestBodyModel _$AuthRequestBodyModelFromJson(Map<String, dynamic> json) {
  return _AuthRequestBodyModel.fromJson(json);
}

/// @nodoc
mixin _$AuthRequestBodyModel {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthRequestBodyModelCopyWith<AuthRequestBodyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthRequestBodyModelCopyWith<$Res> {
  factory $AuthRequestBodyModelCopyWith(AuthRequestBodyModel value,
          $Res Function(AuthRequestBodyModel) then) =
      _$AuthRequestBodyModelCopyWithImpl<$Res, AuthRequestBodyModel>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$AuthRequestBodyModelCopyWithImpl<$Res,
        $Val extends AuthRequestBodyModel>
    implements $AuthRequestBodyModelCopyWith<$Res> {
  _$AuthRequestBodyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthRequestBodyModelCopyWith<$Res>
    implements $AuthRequestBodyModelCopyWith<$Res> {
  factory _$$_AuthRequestBodyModelCopyWith(_$_AuthRequestBodyModel value,
          $Res Function(_$_AuthRequestBodyModel) then) =
      __$$_AuthRequestBodyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_AuthRequestBodyModelCopyWithImpl<$Res>
    extends _$AuthRequestBodyModelCopyWithImpl<$Res, _$_AuthRequestBodyModel>
    implements _$$_AuthRequestBodyModelCopyWith<$Res> {
  __$$_AuthRequestBodyModelCopyWithImpl(_$_AuthRequestBodyModel _value,
      $Res Function(_$_AuthRequestBodyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_AuthRequestBodyModel(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthRequestBodyModel implements _AuthRequestBodyModel {
  _$_AuthRequestBodyModel({required this.email, required this.password});

  factory _$_AuthRequestBodyModel.fromJson(Map<String, dynamic> json) =>
      _$$_AuthRequestBodyModelFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthRequestBodyModel(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthRequestBodyModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthRequestBodyModelCopyWith<_$_AuthRequestBodyModel> get copyWith =>
      __$$_AuthRequestBodyModelCopyWithImpl<_$_AuthRequestBodyModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthRequestBodyModelToJson(
      this,
    );
  }
}

abstract class _AuthRequestBodyModel implements AuthRequestBodyModel {
  factory _AuthRequestBodyModel(
      {required final String email,
      required final String password}) = _$_AuthRequestBodyModel;

  factory _AuthRequestBodyModel.fromJson(Map<String, dynamic> json) =
      _$_AuthRequestBodyModel.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_AuthRequestBodyModelCopyWith<_$_AuthRequestBodyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
