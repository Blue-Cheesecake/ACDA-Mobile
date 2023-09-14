// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action_bar_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ActionBarState {
  bool get isOpening => throw _privateConstructorUsedError;
  double get actionBarWidth => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActionBarStateCopyWith<ActionBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionBarStateCopyWith<$Res> {
  factory $ActionBarStateCopyWith(
          ActionBarState value, $Res Function(ActionBarState) then) =
      _$ActionBarStateCopyWithImpl<$Res, ActionBarState>;
  @useResult
  $Res call({bool isOpening, double actionBarWidth});
}

/// @nodoc
class _$ActionBarStateCopyWithImpl<$Res, $Val extends ActionBarState>
    implements $ActionBarStateCopyWith<$Res> {
  _$ActionBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpening = null,
    Object? actionBarWidth = null,
  }) {
    return _then(_value.copyWith(
      isOpening: null == isOpening
          ? _value.isOpening
          : isOpening // ignore: cast_nullable_to_non_nullable
              as bool,
      actionBarWidth: null == actionBarWidth
          ? _value.actionBarWidth
          : actionBarWidth // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ActionBarStateCopyWith<$Res>
    implements $ActionBarStateCopyWith<$Res> {
  factory _$$_ActionBarStateCopyWith(
          _$_ActionBarState value, $Res Function(_$_ActionBarState) then) =
      __$$_ActionBarStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isOpening, double actionBarWidth});
}

/// @nodoc
class __$$_ActionBarStateCopyWithImpl<$Res>
    extends _$ActionBarStateCopyWithImpl<$Res, _$_ActionBarState>
    implements _$$_ActionBarStateCopyWith<$Res> {
  __$$_ActionBarStateCopyWithImpl(
      _$_ActionBarState _value, $Res Function(_$_ActionBarState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpening = null,
    Object? actionBarWidth = null,
  }) {
    return _then(_$_ActionBarState(
      isOpening: null == isOpening
          ? _value.isOpening
          : isOpening // ignore: cast_nullable_to_non_nullable
              as bool,
      actionBarWidth: null == actionBarWidth
          ? _value.actionBarWidth
          : actionBarWidth // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ActionBarState implements _ActionBarState {
  _$_ActionBarState({this.isOpening = false, this.actionBarWidth = 31});

  @override
  @JsonKey()
  final bool isOpening;
  @override
  @JsonKey()
  final double actionBarWidth;

  @override
  String toString() {
    return 'ActionBarState(isOpening: $isOpening, actionBarWidth: $actionBarWidth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionBarState &&
            (identical(other.isOpening, isOpening) ||
                other.isOpening == isOpening) &&
            (identical(other.actionBarWidth, actionBarWidth) ||
                other.actionBarWidth == actionBarWidth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isOpening, actionBarWidth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActionBarStateCopyWith<_$_ActionBarState> get copyWith =>
      __$$_ActionBarStateCopyWithImpl<_$_ActionBarState>(this, _$identity);
}

abstract class _ActionBarState implements ActionBarState {
  factory _ActionBarState({final bool isOpening, final double actionBarWidth}) =
      _$_ActionBarState;

  @override
  bool get isOpening;
  @override
  double get actionBarWidth;
  @override
  @JsonKey(ignore: true)
  _$$_ActionBarStateCopyWith<_$_ActionBarState> get copyWith =>
      throw _privateConstructorUsedError;
}
