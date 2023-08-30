// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'central_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CentralState {
  int get currentPage => throw _privateConstructorUsedError;
  Color get notchColor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CentralStateCopyWith<CentralState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CentralStateCopyWith<$Res> {
  factory $CentralStateCopyWith(
          CentralState value, $Res Function(CentralState) then) =
      _$CentralStateCopyWithImpl<$Res, CentralState>;
  @useResult
  $Res call({int currentPage, Color notchColor});
}

/// @nodoc
class _$CentralStateCopyWithImpl<$Res, $Val extends CentralState>
    implements $CentralStateCopyWith<$Res> {
  _$CentralStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? notchColor = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      notchColor: null == notchColor
          ? _value.notchColor
          : notchColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CentralStateCopyWith<$Res>
    implements $CentralStateCopyWith<$Res> {
  factory _$$_CentralStateCopyWith(
          _$_CentralState value, $Res Function(_$_CentralState) then) =
      __$$_CentralStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentPage, Color notchColor});
}

/// @nodoc
class __$$_CentralStateCopyWithImpl<$Res>
    extends _$CentralStateCopyWithImpl<$Res, _$_CentralState>
    implements _$$_CentralStateCopyWith<$Res> {
  __$$_CentralStateCopyWithImpl(
      _$_CentralState _value, $Res Function(_$_CentralState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? notchColor = null,
  }) {
    return _then(_$_CentralState(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      notchColor: null == notchColor
          ? _value.notchColor
          : notchColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_CentralState implements _CentralState {
  _$_CentralState({this.currentPage = 1, this.notchColor = DesignSystem.g23});

  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final Color notchColor;

  @override
  String toString() {
    return 'CentralState(currentPage: $currentPage, notchColor: $notchColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CentralState &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.notchColor, notchColor) ||
                other.notchColor == notchColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPage, notchColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CentralStateCopyWith<_$_CentralState> get copyWith =>
      __$$_CentralStateCopyWithImpl<_$_CentralState>(this, _$identity);
}

abstract class _CentralState implements CentralState {
  factory _CentralState({final int currentPage, final Color notchColor}) =
      _$_CentralState;

  @override
  int get currentPage;
  @override
  Color get notchColor;
  @override
  @JsonKey(ignore: true)
  _$$_CentralStateCopyWith<_$_CentralState> get copyWith =>
      throw _privateConstructorUsedError;
}
