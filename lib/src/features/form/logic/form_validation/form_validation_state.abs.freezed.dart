// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_validation_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormValidationState {
  String? get labelErrorText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormValidationStateCopyWith<FormValidationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormValidationStateCopyWith<$Res> {
  factory $FormValidationStateCopyWith(
          FormValidationState value, $Res Function(FormValidationState) then) =
      _$FormValidationStateCopyWithImpl<$Res, FormValidationState>;
  @useResult
  $Res call({String? labelErrorText});
}

/// @nodoc
class _$FormValidationStateCopyWithImpl<$Res, $Val extends FormValidationState>
    implements $FormValidationStateCopyWith<$Res> {
  _$FormValidationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelErrorText = freezed,
  }) {
    return _then(_value.copyWith(
      labelErrorText: freezed == labelErrorText
          ? _value.labelErrorText
          : labelErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FormValidationStateCopyWith<$Res>
    implements $FormValidationStateCopyWith<$Res> {
  factory _$$_FormValidationStateCopyWith(_$_FormValidationState value,
          $Res Function(_$_FormValidationState) then) =
      __$$_FormValidationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? labelErrorText});
}

/// @nodoc
class __$$_FormValidationStateCopyWithImpl<$Res>
    extends _$FormValidationStateCopyWithImpl<$Res, _$_FormValidationState>
    implements _$$_FormValidationStateCopyWith<$Res> {
  __$$_FormValidationStateCopyWithImpl(_$_FormValidationState _value,
      $Res Function(_$_FormValidationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelErrorText = freezed,
  }) {
    return _then(_$_FormValidationState(
      labelErrorText: freezed == labelErrorText
          ? _value.labelErrorText
          : labelErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FormValidationState implements _FormValidationState {
  _$_FormValidationState({this.labelErrorText});

  @override
  final String? labelErrorText;

  @override
  String toString() {
    return 'FormValidationState(labelErrorText: $labelErrorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormValidationState &&
            (identical(other.labelErrorText, labelErrorText) ||
                other.labelErrorText == labelErrorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, labelErrorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormValidationStateCopyWith<_$_FormValidationState> get copyWith =>
      __$$_FormValidationStateCopyWithImpl<_$_FormValidationState>(
          this, _$identity);
}

abstract class _FormValidationState implements FormValidationState {
  factory _FormValidationState({final String? labelErrorText}) =
      _$_FormValidationState;

  @override
  String? get labelErrorText;
  @override
  @JsonKey(ignore: true)
  _$$_FormValidationStateCopyWith<_$_FormValidationState> get copyWith =>
      throw _privateConstructorUsedError;
}
