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
  String? get confirmedPasswordErrorText => throw _privateConstructorUsedError;
  String? get invalidFaceImageErrorText => throw _privateConstructorUsedError;
  String? get invalidFaceImageInstructionText =>
      throw _privateConstructorUsedError;

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
      {String? confirmedPasswordErrorText,
      String? invalidFaceImageErrorText,
      String? invalidFaceImageInstructionText});
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
    Object? confirmedPasswordErrorText = freezed,
    Object? invalidFaceImageErrorText = freezed,
    Object? invalidFaceImageInstructionText = freezed,
  }) {
    return _then(_value.copyWith(
      confirmedPasswordErrorText: freezed == confirmedPasswordErrorText
          ? _value.confirmedPasswordErrorText
          : confirmedPasswordErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      invalidFaceImageErrorText: freezed == invalidFaceImageErrorText
          ? _value.invalidFaceImageErrorText
          : invalidFaceImageErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      invalidFaceImageInstructionText: freezed ==
              invalidFaceImageInstructionText
          ? _value.invalidFaceImageInstructionText
          : invalidFaceImageInstructionText // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {String? confirmedPasswordErrorText,
      String? invalidFaceImageErrorText,
      String? invalidFaceImageInstructionText});
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
    Object? confirmedPasswordErrorText = freezed,
    Object? invalidFaceImageErrorText = freezed,
    Object? invalidFaceImageInstructionText = freezed,
  }) {
    return _then(_$_RegisterFormValidationState(
      confirmedPasswordErrorText: freezed == confirmedPasswordErrorText
          ? _value.confirmedPasswordErrorText
          : confirmedPasswordErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      invalidFaceImageErrorText: freezed == invalidFaceImageErrorText
          ? _value.invalidFaceImageErrorText
          : invalidFaceImageErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      invalidFaceImageInstructionText: freezed ==
              invalidFaceImageInstructionText
          ? _value.invalidFaceImageInstructionText
          : invalidFaceImageInstructionText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RegisterFormValidationState implements _RegisterFormValidationState {
  _$_RegisterFormValidationState(
      {this.confirmedPasswordErrorText,
      this.invalidFaceImageErrorText,
      this.invalidFaceImageInstructionText});

  @override
  final String? confirmedPasswordErrorText;
  @override
  final String? invalidFaceImageErrorText;
  @override
  final String? invalidFaceImageInstructionText;

  @override
  String toString() {
    return 'RegisterFormValidationState(confirmedPasswordErrorText: $confirmedPasswordErrorText, invalidFaceImageErrorText: $invalidFaceImageErrorText, invalidFaceImageInstructionText: $invalidFaceImageInstructionText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterFormValidationState &&
            (identical(other.confirmedPasswordErrorText,
                    confirmedPasswordErrorText) ||
                other.confirmedPasswordErrorText ==
                    confirmedPasswordErrorText) &&
            (identical(other.invalidFaceImageErrorText,
                    invalidFaceImageErrorText) ||
                other.invalidFaceImageErrorText == invalidFaceImageErrorText) &&
            (identical(other.invalidFaceImageInstructionText,
                    invalidFaceImageInstructionText) ||
                other.invalidFaceImageInstructionText ==
                    invalidFaceImageInstructionText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmedPasswordErrorText,
      invalidFaceImageErrorText, invalidFaceImageInstructionText);

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
          {final String? confirmedPasswordErrorText,
          final String? invalidFaceImageErrorText,
          final String? invalidFaceImageInstructionText}) =
      _$_RegisterFormValidationState;

  @override
  String? get confirmedPasswordErrorText;
  @override
  String? get invalidFaceImageErrorText;
  @override
  String? get invalidFaceImageInstructionText;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterFormValidationStateCopyWith<_$_RegisterFormValidationState>
      get copyWith => throw _privateConstructorUsedError;
}
