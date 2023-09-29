// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_validity_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterValidityState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterValidityStateInitial value) initial,
    required TResult Function(_RegisterValidityStateLoading value) loading,
    required TResult Function(_RegisterValidityStateSuccess value) success,
    required TResult Function(_RegisterValidityStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterValidityStateInitial value)? initial,
    TResult? Function(_RegisterValidityStateLoading value)? loading,
    TResult? Function(_RegisterValidityStateSuccess value)? success,
    TResult? Function(_RegisterValidityStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterValidityStateInitial value)? initial,
    TResult Function(_RegisterValidityStateLoading value)? loading,
    TResult Function(_RegisterValidityStateSuccess value)? success,
    TResult Function(_RegisterValidityStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterValidityStateCopyWith<$Res> {
  factory $RegisterValidityStateCopyWith(RegisterValidityState value,
          $Res Function(RegisterValidityState) then) =
      _$RegisterValidityStateCopyWithImpl<$Res, RegisterValidityState>;
}

/// @nodoc
class _$RegisterValidityStateCopyWithImpl<$Res,
        $Val extends RegisterValidityState>
    implements $RegisterValidityStateCopyWith<$Res> {
  _$RegisterValidityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RegisterValidityStateInitialCopyWith<$Res> {
  factory _$$_RegisterValidityStateInitialCopyWith(
          _$_RegisterValidityStateInitial value,
          $Res Function(_$_RegisterValidityStateInitial) then) =
      __$$_RegisterValidityStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegisterValidityStateInitialCopyWithImpl<$Res>
    extends _$RegisterValidityStateCopyWithImpl<$Res,
        _$_RegisterValidityStateInitial>
    implements _$$_RegisterValidityStateInitialCopyWith<$Res> {
  __$$_RegisterValidityStateInitialCopyWithImpl(
      _$_RegisterValidityStateInitial _value,
      $Res Function(_$_RegisterValidityStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RegisterValidityStateInitial implements _RegisterValidityStateInitial {
  _$_RegisterValidityStateInitial();

  @override
  String toString() {
    return 'RegisterValidityState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterValidityStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterValidityStateInitial value) initial,
    required TResult Function(_RegisterValidityStateLoading value) loading,
    required TResult Function(_RegisterValidityStateSuccess value) success,
    required TResult Function(_RegisterValidityStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterValidityStateInitial value)? initial,
    TResult? Function(_RegisterValidityStateLoading value)? loading,
    TResult? Function(_RegisterValidityStateSuccess value)? success,
    TResult? Function(_RegisterValidityStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterValidityStateInitial value)? initial,
    TResult Function(_RegisterValidityStateLoading value)? loading,
    TResult Function(_RegisterValidityStateSuccess value)? success,
    TResult Function(_RegisterValidityStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _RegisterValidityStateInitial implements RegisterValidityState {
  factory _RegisterValidityStateInitial() = _$_RegisterValidityStateInitial;
}

/// @nodoc
abstract class _$$_RegisterValidityStateLoadingCopyWith<$Res> {
  factory _$$_RegisterValidityStateLoadingCopyWith(
          _$_RegisterValidityStateLoading value,
          $Res Function(_$_RegisterValidityStateLoading) then) =
      __$$_RegisterValidityStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegisterValidityStateLoadingCopyWithImpl<$Res>
    extends _$RegisterValidityStateCopyWithImpl<$Res,
        _$_RegisterValidityStateLoading>
    implements _$$_RegisterValidityStateLoadingCopyWith<$Res> {
  __$$_RegisterValidityStateLoadingCopyWithImpl(
      _$_RegisterValidityStateLoading _value,
      $Res Function(_$_RegisterValidityStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RegisterValidityStateLoading implements _RegisterValidityStateLoading {
  _$_RegisterValidityStateLoading();

  @override
  String toString() {
    return 'RegisterValidityState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterValidityStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterValidityStateInitial value) initial,
    required TResult Function(_RegisterValidityStateLoading value) loading,
    required TResult Function(_RegisterValidityStateSuccess value) success,
    required TResult Function(_RegisterValidityStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterValidityStateInitial value)? initial,
    TResult? Function(_RegisterValidityStateLoading value)? loading,
    TResult? Function(_RegisterValidityStateSuccess value)? success,
    TResult? Function(_RegisterValidityStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterValidityStateInitial value)? initial,
    TResult Function(_RegisterValidityStateLoading value)? loading,
    TResult Function(_RegisterValidityStateSuccess value)? success,
    TResult Function(_RegisterValidityStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _RegisterValidityStateLoading implements RegisterValidityState {
  factory _RegisterValidityStateLoading() = _$_RegisterValidityStateLoading;
}

/// @nodoc
abstract class _$$_RegisterValidityStateSuccessCopyWith<$Res> {
  factory _$$_RegisterValidityStateSuccessCopyWith(
          _$_RegisterValidityStateSuccess value,
          $Res Function(_$_RegisterValidityStateSuccess) then) =
      __$$_RegisterValidityStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegisterValidityStateSuccessCopyWithImpl<$Res>
    extends _$RegisterValidityStateCopyWithImpl<$Res,
        _$_RegisterValidityStateSuccess>
    implements _$$_RegisterValidityStateSuccessCopyWith<$Res> {
  __$$_RegisterValidityStateSuccessCopyWithImpl(
      _$_RegisterValidityStateSuccess _value,
      $Res Function(_$_RegisterValidityStateSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RegisterValidityStateSuccess implements _RegisterValidityStateSuccess {
  _$_RegisterValidityStateSuccess();

  @override
  String toString() {
    return 'RegisterValidityState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterValidityStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterValidityStateInitial value) initial,
    required TResult Function(_RegisterValidityStateLoading value) loading,
    required TResult Function(_RegisterValidityStateSuccess value) success,
    required TResult Function(_RegisterValidityStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterValidityStateInitial value)? initial,
    TResult? Function(_RegisterValidityStateLoading value)? loading,
    TResult? Function(_RegisterValidityStateSuccess value)? success,
    TResult? Function(_RegisterValidityStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterValidityStateInitial value)? initial,
    TResult Function(_RegisterValidityStateLoading value)? loading,
    TResult Function(_RegisterValidityStateSuccess value)? success,
    TResult Function(_RegisterValidityStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _RegisterValidityStateSuccess implements RegisterValidityState {
  factory _RegisterValidityStateSuccess() = _$_RegisterValidityStateSuccess;
}

/// @nodoc
abstract class _$$_RegisterValidityStateErrorCopyWith<$Res> {
  factory _$$_RegisterValidityStateErrorCopyWith(
          _$_RegisterValidityStateError value,
          $Res Function(_$_RegisterValidityStateError) then) =
      __$$_RegisterValidityStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_RegisterValidityStateErrorCopyWithImpl<$Res>
    extends _$RegisterValidityStateCopyWithImpl<$Res,
        _$_RegisterValidityStateError>
    implements _$$_RegisterValidityStateErrorCopyWith<$Res> {
  __$$_RegisterValidityStateErrorCopyWithImpl(
      _$_RegisterValidityStateError _value,
      $Res Function(_$_RegisterValidityStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_RegisterValidityStateError(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterValidityStateError implements _RegisterValidityStateError {
  _$_RegisterValidityStateError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RegisterValidityState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterValidityStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterValidityStateErrorCopyWith<_$_RegisterValidityStateError>
      get copyWith => __$$_RegisterValidityStateErrorCopyWithImpl<
          _$_RegisterValidityStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterValidityStateInitial value) initial,
    required TResult Function(_RegisterValidityStateLoading value) loading,
    required TResult Function(_RegisterValidityStateSuccess value) success,
    required TResult Function(_RegisterValidityStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterValidityStateInitial value)? initial,
    TResult? Function(_RegisterValidityStateLoading value)? loading,
    TResult? Function(_RegisterValidityStateSuccess value)? success,
    TResult? Function(_RegisterValidityStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterValidityStateInitial value)? initial,
    TResult Function(_RegisterValidityStateLoading value)? loading,
    TResult Function(_RegisterValidityStateSuccess value)? success,
    TResult Function(_RegisterValidityStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _RegisterValidityStateError implements RegisterValidityState {
  factory _RegisterValidityStateError({required final String message}) =
      _$_RegisterValidityStateError;

  String get message;
  @JsonKey(ignore: true)
  _$$_RegisterValidityStateErrorCopyWith<_$_RegisterValidityStateError>
      get copyWith => throw _privateConstructorUsedError;
}
