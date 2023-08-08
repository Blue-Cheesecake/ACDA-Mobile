// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_form_validation_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterFormValidationState {
  String? get passwordErrorText => throw _privateConstructorUsedError;
  String? get confirmedPasswordErrorText => throw _privateConstructorUsedError;
  dynamic get isFaceImageAlreadyPassed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterFormValidationStateCopyWith<RegisterFormValidationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFormValidationStateCopyWith<$Res> {
  factory $RegisterFormValidationStateCopyWith(
          RegisterFormValidationState value,
          $Res Function(RegisterFormValidationState) then) =
      _$RegisterFormValidationStateCopyWithImpl<$Res,
          RegisterFormValidationState>;
  @useResult
  $Res call(
      {String? passwordErrorText,
      String? confirmedPasswordErrorText,
      dynamic isFaceImageAlreadyPassed});
}

/// @nodoc
class _$RegisterFormValidationStateCopyWithImpl<$Res,
        $Val extends RegisterFormValidationState>
    implements $RegisterFormValidationStateCopyWith<$Res> {
  _$RegisterFormValidationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordErrorText = freezed,
    Object? confirmedPasswordErrorText = freezed,
    Object? isFaceImageAlreadyPassed = freezed,
  }) {
    return _then(_value.copyWith(
      passwordErrorText: freezed == passwordErrorText
          ? _value.passwordErrorText
          : passwordErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmedPasswordErrorText: freezed == confirmedPasswordErrorText
          ? _value.confirmedPasswordErrorText
          : confirmedPasswordErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      isFaceImageAlreadyPassed: freezed == isFaceImageAlreadyPassed
          ? _value.isFaceImageAlreadyPassed
          : isFaceImageAlreadyPassed // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterFormValidationStateCopyWith<$Res>
    implements $RegisterFormValidationStateCopyWith<$Res> {
  factory _$$_RegisterFormValidationStateCopyWith(
          _$_RegisterFormValidationState value,
          $Res Function(_$_RegisterFormValidationState) then) =
      __$$_RegisterFormValidationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? passwordErrorText,
      String? confirmedPasswordErrorText,
      dynamic isFaceImageAlreadyPassed});
}

/// @nodoc
class __$$_RegisterFormValidationStateCopyWithImpl<$Res>
    extends _$RegisterFormValidationStateCopyWithImpl<$Res,
        _$_RegisterFormValidationState>
    implements _$$_RegisterFormValidationStateCopyWith<$Res> {
  __$$_RegisterFormValidationStateCopyWithImpl(
      _$_RegisterFormValidationState _value,
      $Res Function(_$_RegisterFormValidationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordErrorText = freezed,
    Object? confirmedPasswordErrorText = freezed,
    Object? isFaceImageAlreadyPassed = freezed,
  }) {
    return _then(_$_RegisterFormValidationState(
      passwordErrorText: freezed == passwordErrorText
          ? _value.passwordErrorText
          : passwordErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmedPasswordErrorText: freezed == confirmedPasswordErrorText
          ? _value.confirmedPasswordErrorText
          : confirmedPasswordErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      isFaceImageAlreadyPassed: freezed == isFaceImageAlreadyPassed
          ? _value.isFaceImageAlreadyPassed!
          : isFaceImageAlreadyPassed,
    ));
  }
}

/// @nodoc

class _$_RegisterFormValidationState implements _RegisterFormValidationState {
  _$_RegisterFormValidationState(
      {this.passwordErrorText,
      this.confirmedPasswordErrorText,
      this.isFaceImageAlreadyPassed = false});

  @override
  final String? passwordErrorText;
  @override
  final String? confirmedPasswordErrorText;
  @override
  @JsonKey()
  final dynamic isFaceImageAlreadyPassed;

  @override
  String toString() {
    return 'RegisterFormValidationState(passwordErrorText: $passwordErrorText, confirmedPasswordErrorText: $confirmedPasswordErrorText, isFaceImageAlreadyPassed: $isFaceImageAlreadyPassed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterFormValidationState &&
            (identical(other.passwordErrorText, passwordErrorText) ||
                other.passwordErrorText == passwordErrorText) &&
            (identical(other.confirmedPasswordErrorText,
                    confirmedPasswordErrorText) ||
                other.confirmedPasswordErrorText ==
                    confirmedPasswordErrorText) &&
            const DeepCollectionEquality().equals(
                other.isFaceImageAlreadyPassed, isFaceImageAlreadyPassed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      passwordErrorText,
      confirmedPasswordErrorText,
      const DeepCollectionEquality().hash(isFaceImageAlreadyPassed));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterFormValidationStateCopyWith<_$_RegisterFormValidationState>
      get copyWith => __$$_RegisterFormValidationStateCopyWithImpl<
          _$_RegisterFormValidationState>(this, _$identity);
}

abstract class _RegisterFormValidationState
    implements RegisterFormValidationState {
  factory _RegisterFormValidationState(
      {final String? passwordErrorText,
      final String? confirmedPasswordErrorText,
      final dynamic isFaceImageAlreadyPassed}) = _$_RegisterFormValidationState;

  @override
  String? get passwordErrorText;
  @override
  String? get confirmedPasswordErrorText;
  @override
  dynamic get isFaceImageAlreadyPassed;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterFormValidationStateCopyWith<_$_RegisterFormValidationState>
      get copyWith => throw _privateConstructorUsedError;
}
