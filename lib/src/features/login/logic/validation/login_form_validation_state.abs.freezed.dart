// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_form_validation_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginFormValidationState {
  String? get invalidAuthenticationErrorText =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginFormValidationStateCopyWith<LoginFormValidationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormValidationStateCopyWith<$Res> {
  factory $LoginFormValidationStateCopyWith(LoginFormValidationState value,
          $Res Function(LoginFormValidationState) then) =
      _$LoginFormValidationStateCopyWithImpl<$Res, LoginFormValidationState>;
  @useResult
  $Res call({String? invalidAuthenticationErrorText});
}

/// @nodoc
class _$LoginFormValidationStateCopyWithImpl<$Res,
        $Val extends LoginFormValidationState>
    implements $LoginFormValidationStateCopyWith<$Res> {
  _$LoginFormValidationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invalidAuthenticationErrorText = freezed,
  }) {
    return _then(_value.copyWith(
      invalidAuthenticationErrorText: freezed == invalidAuthenticationErrorText
          ? _value.invalidAuthenticationErrorText
          : invalidAuthenticationErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginFormValidationStateCopyWith<$Res>
    implements $LoginFormValidationStateCopyWith<$Res> {
  factory _$$_LoginFormValidationStateCopyWith(
          _$_LoginFormValidationState value,
          $Res Function(_$_LoginFormValidationState) then) =
      __$$_LoginFormValidationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? invalidAuthenticationErrorText});
}

/// @nodoc
class __$$_LoginFormValidationStateCopyWithImpl<$Res>
    extends _$LoginFormValidationStateCopyWithImpl<$Res,
        _$_LoginFormValidationState>
    implements _$$_LoginFormValidationStateCopyWith<$Res> {
  __$$_LoginFormValidationStateCopyWithImpl(_$_LoginFormValidationState _value,
      $Res Function(_$_LoginFormValidationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invalidAuthenticationErrorText = freezed,
  }) {
    return _then(_$_LoginFormValidationState(
      invalidAuthenticationErrorText: freezed == invalidAuthenticationErrorText
          ? _value.invalidAuthenticationErrorText
          : invalidAuthenticationErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LoginFormValidationState implements _LoginFormValidationState {
  _$_LoginFormValidationState({this.invalidAuthenticationErrorText});

  @override
  final String? invalidAuthenticationErrorText;

  @override
  String toString() {
    return 'LoginFormValidationState(invalidAuthenticationErrorText: $invalidAuthenticationErrorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginFormValidationState &&
            (identical(other.invalidAuthenticationErrorText,
                    invalidAuthenticationErrorText) ||
                other.invalidAuthenticationErrorText ==
                    invalidAuthenticationErrorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invalidAuthenticationErrorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginFormValidationStateCopyWith<_$_LoginFormValidationState>
      get copyWith => __$$_LoginFormValidationStateCopyWithImpl<
          _$_LoginFormValidationState>(this, _$identity);
}

abstract class _LoginFormValidationState implements LoginFormValidationState {
  factory _LoginFormValidationState(
          {final String? invalidAuthenticationErrorText}) =
      _$_LoginFormValidationState;

  @override
  String? get invalidAuthenticationErrorText;
  @override
  @JsonKey(ignore: true)
  _$$_LoginFormValidationStateCopyWith<_$_LoginFormValidationState>
      get copyWith => throw _privateConstructorUsedError;
}
