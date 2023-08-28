// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_form_input_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginFormInputState {
  String? get studentId => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  bool get isButtonEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginFormInputStateCopyWith<LoginFormInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormInputStateCopyWith<$Res> {
  factory $LoginFormInputStateCopyWith(
          LoginFormInputState value, $Res Function(LoginFormInputState) then) =
      _$LoginFormInputStateCopyWithImpl<$Res, LoginFormInputState>;
  @useResult
  $Res call({String? studentId, String? password, bool isButtonEnabled});
}

/// @nodoc
class _$LoginFormInputStateCopyWithImpl<$Res, $Val extends LoginFormInputState>
    implements $LoginFormInputStateCopyWith<$Res> {
  _$LoginFormInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = freezed,
    Object? password = freezed,
    Object? isButtonEnabled = null,
  }) {
    return _then(_value.copyWith(
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      isButtonEnabled: null == isButtonEnabled
          ? _value.isButtonEnabled
          : isButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginFormInputStateCopyWith<$Res>
    implements $LoginFormInputStateCopyWith<$Res> {
  factory _$$_LoginFormInputStateCopyWith(_$_LoginFormInputState value,
          $Res Function(_$_LoginFormInputState) then) =
      __$$_LoginFormInputStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? studentId, String? password, bool isButtonEnabled});
}

/// @nodoc
class __$$_LoginFormInputStateCopyWithImpl<$Res>
    extends _$LoginFormInputStateCopyWithImpl<$Res, _$_LoginFormInputState>
    implements _$$_LoginFormInputStateCopyWith<$Res> {
  __$$_LoginFormInputStateCopyWithImpl(_$_LoginFormInputState _value,
      $Res Function(_$_LoginFormInputState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = freezed,
    Object? password = freezed,
    Object? isButtonEnabled = null,
  }) {
    return _then(_$_LoginFormInputState(
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      isButtonEnabled: null == isButtonEnabled
          ? _value.isButtonEnabled
          : isButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoginFormInputState implements _LoginFormInputState {
  _$_LoginFormInputState(
      {this.studentId, this.password, this.isButtonEnabled = false});

  @override
  final String? studentId;
  @override
  final String? password;
  @override
  @JsonKey()
  final bool isButtonEnabled;

  @override
  String toString() {
    return 'LoginFormInputState(studentId: $studentId, password: $password, isButtonEnabled: $isButtonEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginFormInputState &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isButtonEnabled, isButtonEnabled) ||
                other.isButtonEnabled == isButtonEnabled));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, studentId, password, isButtonEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginFormInputStateCopyWith<_$_LoginFormInputState> get copyWith =>
      __$$_LoginFormInputStateCopyWithImpl<_$_LoginFormInputState>(
          this, _$identity);
}

abstract class _LoginFormInputState implements LoginFormInputState {
  factory _LoginFormInputState(
      {final String? studentId,
      final String? password,
      final bool isButtonEnabled}) = _$_LoginFormInputState;

  @override
  String? get studentId;
  @override
  String? get password;
  @override
  bool get isButtonEnabled;
  @override
  @JsonKey(ignore: true)
  _$$_LoginFormInputStateCopyWith<_$_LoginFormInputState> get copyWith =>
      throw _privateConstructorUsedError;
}
