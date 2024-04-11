// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evaluation_form_status_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EvaluationFormStatusState {
  bool get isFullBodyImageFilled => throw _privateConstructorUsedError;
  bool get isUpperBodyImageFilled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EvaluationFormStatusStateCopyWith<EvaluationFormStatusState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvaluationFormStatusStateCopyWith<$Res> {
  factory $EvaluationFormStatusStateCopyWith(EvaluationFormStatusState value,
          $Res Function(EvaluationFormStatusState) then) =
      _$EvaluationFormStatusStateCopyWithImpl<$Res, EvaluationFormStatusState>;
  @useResult
  $Res call({bool isFullBodyImageFilled, bool isUpperBodyImageFilled});
}

/// @nodoc
class _$EvaluationFormStatusStateCopyWithImpl<$Res,
        $Val extends EvaluationFormStatusState>
    implements $EvaluationFormStatusStateCopyWith<$Res> {
  _$EvaluationFormStatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFullBodyImageFilled = null,
    Object? isUpperBodyImageFilled = null,
  }) {
    return _then(_value.copyWith(
      isFullBodyImageFilled: null == isFullBodyImageFilled
          ? _value.isFullBodyImageFilled
          : isFullBodyImageFilled // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpperBodyImageFilled: null == isUpperBodyImageFilled
          ? _value.isUpperBodyImageFilled
          : isUpperBodyImageFilled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EvaluationFormStatusStateCopyWith<$Res>
    implements $EvaluationFormStatusStateCopyWith<$Res> {
  factory _$$_EvaluationFormStatusStateCopyWith(
          _$_EvaluationFormStatusState value,
          $Res Function(_$_EvaluationFormStatusState) then) =
      __$$_EvaluationFormStatusStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isFullBodyImageFilled, bool isUpperBodyImageFilled});
}

/// @nodoc
class __$$_EvaluationFormStatusStateCopyWithImpl<$Res>
    extends _$EvaluationFormStatusStateCopyWithImpl<$Res,
        _$_EvaluationFormStatusState>
    implements _$$_EvaluationFormStatusStateCopyWith<$Res> {
  __$$_EvaluationFormStatusStateCopyWithImpl(
      _$_EvaluationFormStatusState _value,
      $Res Function(_$_EvaluationFormStatusState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFullBodyImageFilled = null,
    Object? isUpperBodyImageFilled = null,
  }) {
    return _then(_$_EvaluationFormStatusState(
      isFullBodyImageFilled: null == isFullBodyImageFilled
          ? _value.isFullBodyImageFilled
          : isFullBodyImageFilled // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpperBodyImageFilled: null == isUpperBodyImageFilled
          ? _value.isUpperBodyImageFilled
          : isUpperBodyImageFilled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EvaluationFormStatusState implements _EvaluationFormStatusState {
  _$_EvaluationFormStatusState(
      {this.isFullBodyImageFilled = false,
      this.isUpperBodyImageFilled = false});

  @override
  @JsonKey()
  final bool isFullBodyImageFilled;
  @override
  @JsonKey()
  final bool isUpperBodyImageFilled;

  @override
  String toString() {
    return 'EvaluationFormStatusState(isFullBodyImageFilled: $isFullBodyImageFilled, isUpperBodyImageFilled: $isUpperBodyImageFilled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EvaluationFormStatusState &&
            (identical(other.isFullBodyImageFilled, isFullBodyImageFilled) ||
                other.isFullBodyImageFilled == isFullBodyImageFilled) &&
            (identical(other.isUpperBodyImageFilled, isUpperBodyImageFilled) ||
                other.isUpperBodyImageFilled == isUpperBodyImageFilled));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isFullBodyImageFilled, isUpperBodyImageFilled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EvaluationFormStatusStateCopyWith<_$_EvaluationFormStatusState>
      get copyWith => __$$_EvaluationFormStatusStateCopyWithImpl<
          _$_EvaluationFormStatusState>(this, _$identity);
}

abstract class _EvaluationFormStatusState implements EvaluationFormStatusState {
  factory _EvaluationFormStatusState(
      {final bool isFullBodyImageFilled,
      final bool isUpperBodyImageFilled}) = _$_EvaluationFormStatusState;

  @override
  bool get isFullBodyImageFilled;
  @override
  bool get isUpperBodyImageFilled;
  @override
  @JsonKey(ignore: true)
  _$$_EvaluationFormStatusStateCopyWith<_$_EvaluationFormStatusState>
      get copyWith => throw _privateConstructorUsedError;
}
