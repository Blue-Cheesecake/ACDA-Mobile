// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evaluation_form_input_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EvaluationFormInputState {
  bool get isSubmitButtonEnabled => throw _privateConstructorUsedError;
  EvaluationFormField get currentField => throw _privateConstructorUsedError;
  XFile? get fullBodyImageFile => throw _privateConstructorUsedError;
  XFile? get upperBodyImageFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EvaluationFormInputStateCopyWith<EvaluationFormInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvaluationFormInputStateCopyWith<$Res> {
  factory $EvaluationFormInputStateCopyWith(EvaluationFormInputState value,
          $Res Function(EvaluationFormInputState) then) =
      _$EvaluationFormInputStateCopyWithImpl<$Res, EvaluationFormInputState>;
  @useResult
  $Res call(
      {bool isSubmitButtonEnabled,
      EvaluationFormField currentField,
      XFile? fullBodyImageFile,
      XFile? upperBodyImageFile});
}

/// @nodoc
class _$EvaluationFormInputStateCopyWithImpl<$Res,
        $Val extends EvaluationFormInputState>
    implements $EvaluationFormInputStateCopyWith<$Res> {
  _$EvaluationFormInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitButtonEnabled = null,
    Object? currentField = null,
    Object? fullBodyImageFile = freezed,
    Object? upperBodyImageFile = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitButtonEnabled: null == isSubmitButtonEnabled
          ? _value.isSubmitButtonEnabled
          : isSubmitButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      currentField: null == currentField
          ? _value.currentField
          : currentField // ignore: cast_nullable_to_non_nullable
              as EvaluationFormField,
      fullBodyImageFile: freezed == fullBodyImageFile
          ? _value.fullBodyImageFile
          : fullBodyImageFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
      upperBodyImageFile: freezed == upperBodyImageFile
          ? _value.upperBodyImageFile
          : upperBodyImageFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EvaluationFormInputStateCopyWith<$Res>
    implements $EvaluationFormInputStateCopyWith<$Res> {
  factory _$$_EvaluationFormInputStateCopyWith(
          _$_EvaluationFormInputState value,
          $Res Function(_$_EvaluationFormInputState) then) =
      __$$_EvaluationFormInputStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSubmitButtonEnabled,
      EvaluationFormField currentField,
      XFile? fullBodyImageFile,
      XFile? upperBodyImageFile});
}

/// @nodoc
class __$$_EvaluationFormInputStateCopyWithImpl<$Res>
    extends _$EvaluationFormInputStateCopyWithImpl<$Res,
        _$_EvaluationFormInputState>
    implements _$$_EvaluationFormInputStateCopyWith<$Res> {
  __$$_EvaluationFormInputStateCopyWithImpl(_$_EvaluationFormInputState _value,
      $Res Function(_$_EvaluationFormInputState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitButtonEnabled = null,
    Object? currentField = null,
    Object? fullBodyImageFile = freezed,
    Object? upperBodyImageFile = freezed,
  }) {
    return _then(_$_EvaluationFormInputState(
      isSubmitButtonEnabled: null == isSubmitButtonEnabled
          ? _value.isSubmitButtonEnabled
          : isSubmitButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      currentField: null == currentField
          ? _value.currentField
          : currentField // ignore: cast_nullable_to_non_nullable
              as EvaluationFormField,
      fullBodyImageFile: freezed == fullBodyImageFile
          ? _value.fullBodyImageFile
          : fullBodyImageFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
      upperBodyImageFile: freezed == upperBodyImageFile
          ? _value.upperBodyImageFile
          : upperBodyImageFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$_EvaluationFormInputState implements _EvaluationFormInputState {
  _$_EvaluationFormInputState(
      {this.isSubmitButtonEnabled = false,
      this.currentField = EvaluationFormField.fullBody,
      this.fullBodyImageFile,
      this.upperBodyImageFile});

  @override
  @JsonKey()
  final bool isSubmitButtonEnabled;
  @override
  @JsonKey()
  final EvaluationFormField currentField;
  @override
  final XFile? fullBodyImageFile;
  @override
  final XFile? upperBodyImageFile;

  @override
  String toString() {
    return 'EvaluationFormInputState(isSubmitButtonEnabled: $isSubmitButtonEnabled, currentField: $currentField, fullBodyImageFile: $fullBodyImageFile, upperBodyImageFile: $upperBodyImageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EvaluationFormInputState &&
            (identical(other.isSubmitButtonEnabled, isSubmitButtonEnabled) ||
                other.isSubmitButtonEnabled == isSubmitButtonEnabled) &&
            (identical(other.currentField, currentField) ||
                other.currentField == currentField) &&
            (identical(other.fullBodyImageFile, fullBodyImageFile) ||
                other.fullBodyImageFile == fullBodyImageFile) &&
            (identical(other.upperBodyImageFile, upperBodyImageFile) ||
                other.upperBodyImageFile == upperBodyImageFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSubmitButtonEnabled,
      currentField, fullBodyImageFile, upperBodyImageFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EvaluationFormInputStateCopyWith<_$_EvaluationFormInputState>
      get copyWith => __$$_EvaluationFormInputStateCopyWithImpl<
          _$_EvaluationFormInputState>(this, _$identity);
}

abstract class _EvaluationFormInputState implements EvaluationFormInputState {
  factory _EvaluationFormInputState(
      {final bool isSubmitButtonEnabled,
      final EvaluationFormField currentField,
      final XFile? fullBodyImageFile,
      final XFile? upperBodyImageFile}) = _$_EvaluationFormInputState;

  @override
  bool get isSubmitButtonEnabled;
  @override
  EvaluationFormField get currentField;
  @override
  XFile? get fullBodyImageFile;
  @override
  XFile? get upperBodyImageFile;
  @override
  @JsonKey(ignore: true)
  _$$_EvaluationFormInputStateCopyWith<_$_EvaluationFormInputState>
      get copyWith => throw _privateConstructorUsedError;
}
