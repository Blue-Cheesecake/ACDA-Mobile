// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_input_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormInputState {
  String? get label => throw _privateConstructorUsedError;
  Uint8List? get bodyImageBytes => throw _privateConstructorUsedError;
  Uint8List? get bottomImageBytes => throw _privateConstructorUsedError;
  Uint8List? get shoesImageBytes => throw _privateConstructorUsedError;
  bool get isSubmitButtonEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormInputStateCopyWith<FormInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormInputStateCopyWith<$Res> {
  factory $FormInputStateCopyWith(
          FormInputState value, $Res Function(FormInputState) then) =
      _$FormInputStateCopyWithImpl<$Res, FormInputState>;
  @useResult
  $Res call(
      {String? label,
      Uint8List? bodyImageBytes,
      Uint8List? bottomImageBytes,
      Uint8List? shoesImageBytes,
      bool isSubmitButtonEnabled});
}

/// @nodoc
class _$FormInputStateCopyWithImpl<$Res, $Val extends FormInputState>
    implements $FormInputStateCopyWith<$Res> {
  _$FormInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? bodyImageBytes = freezed,
    Object? bottomImageBytes = freezed,
    Object? shoesImageBytes = freezed,
    Object? isSubmitButtonEnabled = null,
  }) {
    return _then(_value.copyWith(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      bodyImageBytes: freezed == bodyImageBytes
          ? _value.bodyImageBytes
          : bodyImageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      bottomImageBytes: freezed == bottomImageBytes
          ? _value.bottomImageBytes
          : bottomImageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      shoesImageBytes: freezed == shoesImageBytes
          ? _value.shoesImageBytes
          : shoesImageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      isSubmitButtonEnabled: null == isSubmitButtonEnabled
          ? _value.isSubmitButtonEnabled
          : isSubmitButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FormInputStateCopyWith<$Res>
    implements $FormInputStateCopyWith<$Res> {
  factory _$$_FormInputStateCopyWith(
          _$_FormInputState value, $Res Function(_$_FormInputState) then) =
      __$$_FormInputStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? label,
      Uint8List? bodyImageBytes,
      Uint8List? bottomImageBytes,
      Uint8List? shoesImageBytes,
      bool isSubmitButtonEnabled});
}

/// @nodoc
class __$$_FormInputStateCopyWithImpl<$Res>
    extends _$FormInputStateCopyWithImpl<$Res, _$_FormInputState>
    implements _$$_FormInputStateCopyWith<$Res> {
  __$$_FormInputStateCopyWithImpl(
      _$_FormInputState _value, $Res Function(_$_FormInputState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? bodyImageBytes = freezed,
    Object? bottomImageBytes = freezed,
    Object? shoesImageBytes = freezed,
    Object? isSubmitButtonEnabled = null,
  }) {
    return _then(_$_FormInputState(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      bodyImageBytes: freezed == bodyImageBytes
          ? _value.bodyImageBytes
          : bodyImageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      bottomImageBytes: freezed == bottomImageBytes
          ? _value.bottomImageBytes
          : bottomImageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      shoesImageBytes: freezed == shoesImageBytes
          ? _value.shoesImageBytes
          : shoesImageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      isSubmitButtonEnabled: null == isSubmitButtonEnabled
          ? _value.isSubmitButtonEnabled
          : isSubmitButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FormInputState
    with DiagnosticableTreeMixin
    implements _FormInputState {
  _$_FormInputState(
      {this.label,
      this.bodyImageBytes,
      this.bottomImageBytes,
      this.shoesImageBytes,
      this.isSubmitButtonEnabled = false});

  @override
  final String? label;
  @override
  final Uint8List? bodyImageBytes;
  @override
  final Uint8List? bottomImageBytes;
  @override
  final Uint8List? shoesImageBytes;
  @override
  @JsonKey()
  final bool isSubmitButtonEnabled;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FormInputState(label: $label, bodyImageBytes: $bodyImageBytes, bottomImageBytes: $bottomImageBytes, shoesImageBytes: $shoesImageBytes, isSubmitButtonEnabled: $isSubmitButtonEnabled)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FormInputState'))
      ..add(DiagnosticsProperty('label', label))
      ..add(DiagnosticsProperty('bodyImageBytes', bodyImageBytes))
      ..add(DiagnosticsProperty('bottomImageBytes', bottomImageBytes))
      ..add(DiagnosticsProperty('shoesImageBytes', shoesImageBytes))
      ..add(
          DiagnosticsProperty('isSubmitButtonEnabled', isSubmitButtonEnabled));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormInputState &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality()
                .equals(other.bodyImageBytes, bodyImageBytes) &&
            const DeepCollectionEquality()
                .equals(other.bottomImageBytes, bottomImageBytes) &&
            const DeepCollectionEquality()
                .equals(other.shoesImageBytes, shoesImageBytes) &&
            (identical(other.isSubmitButtonEnabled, isSubmitButtonEnabled) ||
                other.isSubmitButtonEnabled == isSubmitButtonEnabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      label,
      const DeepCollectionEquality().hash(bodyImageBytes),
      const DeepCollectionEquality().hash(bottomImageBytes),
      const DeepCollectionEquality().hash(shoesImageBytes),
      isSubmitButtonEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormInputStateCopyWith<_$_FormInputState> get copyWith =>
      __$$_FormInputStateCopyWithImpl<_$_FormInputState>(this, _$identity);
}

abstract class _FormInputState implements FormInputState {
  factory _FormInputState(
      {final String? label,
      final Uint8List? bodyImageBytes,
      final Uint8List? bottomImageBytes,
      final Uint8List? shoesImageBytes,
      final bool isSubmitButtonEnabled}) = _$_FormInputState;

  @override
  String? get label;
  @override
  Uint8List? get bodyImageBytes;
  @override
  Uint8List? get bottomImageBytes;
  @override
  Uint8List? get shoesImageBytes;
  @override
  bool get isSubmitButtonEnabled;
  @override
  @JsonKey(ignore: true)
  _$$_FormInputStateCopyWith<_$_FormInputState> get copyWith =>
      throw _privateConstructorUsedError;
}
