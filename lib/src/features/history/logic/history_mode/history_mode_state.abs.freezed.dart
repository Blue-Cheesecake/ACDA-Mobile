// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_mode_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryModeState {
  bool get isDeletingMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryModeStateCopyWith<HistoryModeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryModeStateCopyWith<$Res> {
  factory $HistoryModeStateCopyWith(
          HistoryModeState value, $Res Function(HistoryModeState) then) =
      _$HistoryModeStateCopyWithImpl<$Res, HistoryModeState>;
  @useResult
  $Res call({bool isDeletingMode});
}

/// @nodoc
class _$HistoryModeStateCopyWithImpl<$Res, $Val extends HistoryModeState>
    implements $HistoryModeStateCopyWith<$Res> {
  _$HistoryModeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDeletingMode = null,
  }) {
    return _then(_value.copyWith(
      isDeletingMode: null == isDeletingMode
          ? _value.isDeletingMode
          : isDeletingMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HistoryModeStateCopyWith<$Res>
    implements $HistoryModeStateCopyWith<$Res> {
  factory _$$_HistoryModeStateCopyWith(
          _$_HistoryModeState value, $Res Function(_$_HistoryModeState) then) =
      __$$_HistoryModeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDeletingMode});
}

/// @nodoc
class __$$_HistoryModeStateCopyWithImpl<$Res>
    extends _$HistoryModeStateCopyWithImpl<$Res, _$_HistoryModeState>
    implements _$$_HistoryModeStateCopyWith<$Res> {
  __$$_HistoryModeStateCopyWithImpl(
      _$_HistoryModeState _value, $Res Function(_$_HistoryModeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDeletingMode = null,
  }) {
    return _then(_$_HistoryModeState(
      isDeletingMode: null == isDeletingMode
          ? _value.isDeletingMode
          : isDeletingMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HistoryModeState implements _HistoryModeState {
  _$_HistoryModeState({this.isDeletingMode = false});

  @override
  @JsonKey()
  final bool isDeletingMode;

  @override
  String toString() {
    return 'HistoryModeState(isDeletingMode: $isDeletingMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryModeState &&
            (identical(other.isDeletingMode, isDeletingMode) ||
                other.isDeletingMode == isDeletingMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDeletingMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryModeStateCopyWith<_$_HistoryModeState> get copyWith =>
      __$$_HistoryModeStateCopyWithImpl<_$_HistoryModeState>(this, _$identity);
}

abstract class _HistoryModeState implements HistoryModeState {
  factory _HistoryModeState({final bool isDeletingMode}) = _$_HistoryModeState;

  @override
  bool get isDeletingMode;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryModeStateCopyWith<_$_HistoryModeState> get copyWith =>
      throw _privateConstructorUsedError;
}
