// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(IAuthTokenEntity data) data,
    required TResult Function() error,
    required TResult Function(String message) clientError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(IAuthTokenEntity data)? data,
    TResult? Function()? error,
    TResult? Function(String message)? clientError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(IAuthTokenEntity data)? data,
    TResult Function()? error,
    TResult Function(String message)? clientError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInitial value) initial,
    required TResult Function(_AuthStateData value) data,
    required TResult Function(_AuthStateError value) error,
    required TResult Function(_AuthStateClientError value) clientError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateInitial value)? initial,
    TResult? Function(_AuthStateData value)? data,
    TResult? Function(_AuthStateError value)? error,
    TResult? Function(_AuthStateClientError value)? clientError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInitial value)? initial,
    TResult Function(_AuthStateData value)? data,
    TResult Function(_AuthStateError value)? error,
    TResult Function(_AuthStateClientError value)? clientError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthStateInitialCopyWith<$Res> {
  factory _$$_AuthStateInitialCopyWith(
          _$_AuthStateInitial value, $Res Function(_$_AuthStateInitial) then) =
      __$$_AuthStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStateInitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthStateInitial>
    implements _$$_AuthStateInitialCopyWith<$Res> {
  __$$_AuthStateInitialCopyWithImpl(
      _$_AuthStateInitial _value, $Res Function(_$_AuthStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthStateInitial extends _AuthStateInitial {
  _$_AuthStateInitial() : super._();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(IAuthTokenEntity data) data,
    required TResult Function() error,
    required TResult Function(String message) clientError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(IAuthTokenEntity data)? data,
    TResult? Function()? error,
    TResult? Function(String message)? clientError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(IAuthTokenEntity data)? data,
    TResult Function()? error,
    TResult Function(String message)? clientError,
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
    required TResult Function(_AuthStateInitial value) initial,
    required TResult Function(_AuthStateData value) data,
    required TResult Function(_AuthStateError value) error,
    required TResult Function(_AuthStateClientError value) clientError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateInitial value)? initial,
    TResult? Function(_AuthStateData value)? data,
    TResult? Function(_AuthStateError value)? error,
    TResult? Function(_AuthStateClientError value)? clientError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInitial value)? initial,
    TResult Function(_AuthStateData value)? data,
    TResult Function(_AuthStateError value)? error,
    TResult Function(_AuthStateClientError value)? clientError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AuthStateInitial extends AuthState {
  factory _AuthStateInitial() = _$_AuthStateInitial;
  _AuthStateInitial._() : super._();
}

/// @nodoc
abstract class _$$_AuthStateDataCopyWith<$Res> {
  factory _$$_AuthStateDataCopyWith(
          _$_AuthStateData value, $Res Function(_$_AuthStateData) then) =
      __$$_AuthStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call({IAuthTokenEntity data});
}

/// @nodoc
class __$$_AuthStateDataCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthStateData>
    implements _$$_AuthStateDataCopyWith<$Res> {
  __$$_AuthStateDataCopyWithImpl(
      _$_AuthStateData _value, $Res Function(_$_AuthStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_AuthStateData(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as IAuthTokenEntity,
    ));
  }
}

/// @nodoc

class _$_AuthStateData extends _AuthStateData {
  _$_AuthStateData({required this.data}) : super._();

  @override
  final IAuthTokenEntity data;

  @override
  String toString() {
    return 'AuthState.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStateData &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateDataCopyWith<_$_AuthStateData> get copyWith =>
      __$$_AuthStateDataCopyWithImpl<_$_AuthStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(IAuthTokenEntity data) data,
    required TResult Function() error,
    required TResult Function(String message) clientError,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(IAuthTokenEntity data)? data,
    TResult? Function()? error,
    TResult? Function(String message)? clientError,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(IAuthTokenEntity data)? data,
    TResult Function()? error,
    TResult Function(String message)? clientError,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInitial value) initial,
    required TResult Function(_AuthStateData value) data,
    required TResult Function(_AuthStateError value) error,
    required TResult Function(_AuthStateClientError value) clientError,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateInitial value)? initial,
    TResult? Function(_AuthStateData value)? data,
    TResult? Function(_AuthStateError value)? error,
    TResult? Function(_AuthStateClientError value)? clientError,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInitial value)? initial,
    TResult Function(_AuthStateData value)? data,
    TResult Function(_AuthStateError value)? error,
    TResult Function(_AuthStateClientError value)? clientError,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _AuthStateData extends AuthState {
  factory _AuthStateData({required final IAuthTokenEntity data}) =
      _$_AuthStateData;
  _AuthStateData._() : super._();

  IAuthTokenEntity get data;
  @JsonKey(ignore: true)
  _$$_AuthStateDataCopyWith<_$_AuthStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthStateErrorCopyWith<$Res> {
  factory _$$_AuthStateErrorCopyWith(
          _$_AuthStateError value, $Res Function(_$_AuthStateError) then) =
      __$$_AuthStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStateErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthStateError>
    implements _$$_AuthStateErrorCopyWith<$Res> {
  __$$_AuthStateErrorCopyWithImpl(
      _$_AuthStateError _value, $Res Function(_$_AuthStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthStateError extends _AuthStateError {
  _$_AuthStateError() : super._();

  @override
  String toString() {
    return 'AuthState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(IAuthTokenEntity data) data,
    required TResult Function() error,
    required TResult Function(String message) clientError,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(IAuthTokenEntity data)? data,
    TResult? Function()? error,
    TResult? Function(String message)? clientError,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(IAuthTokenEntity data)? data,
    TResult Function()? error,
    TResult Function(String message)? clientError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInitial value) initial,
    required TResult Function(_AuthStateData value) data,
    required TResult Function(_AuthStateError value) error,
    required TResult Function(_AuthStateClientError value) clientError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateInitial value)? initial,
    TResult? Function(_AuthStateData value)? data,
    TResult? Function(_AuthStateError value)? error,
    TResult? Function(_AuthStateClientError value)? clientError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInitial value)? initial,
    TResult Function(_AuthStateData value)? data,
    TResult Function(_AuthStateError value)? error,
    TResult Function(_AuthStateClientError value)? clientError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AuthStateError extends AuthState {
  factory _AuthStateError() = _$_AuthStateError;
  _AuthStateError._() : super._();
}

/// @nodoc
abstract class _$$_AuthStateClientErrorCopyWith<$Res> {
  factory _$$_AuthStateClientErrorCopyWith(_$_AuthStateClientError value,
          $Res Function(_$_AuthStateClientError) then) =
      __$$_AuthStateClientErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_AuthStateClientErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthStateClientError>
    implements _$$_AuthStateClientErrorCopyWith<$Res> {
  __$$_AuthStateClientErrorCopyWithImpl(_$_AuthStateClientError _value,
      $Res Function(_$_AuthStateClientError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_AuthStateClientError(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthStateClientError extends _AuthStateClientError {
  _$_AuthStateClientError({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.clientError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStateClientError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateClientErrorCopyWith<_$_AuthStateClientError> get copyWith =>
      __$$_AuthStateClientErrorCopyWithImpl<_$_AuthStateClientError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(IAuthTokenEntity data) data,
    required TResult Function() error,
    required TResult Function(String message) clientError,
  }) {
    return clientError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(IAuthTokenEntity data)? data,
    TResult? Function()? error,
    TResult? Function(String message)? clientError,
  }) {
    return clientError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(IAuthTokenEntity data)? data,
    TResult Function()? error,
    TResult Function(String message)? clientError,
    required TResult orElse(),
  }) {
    if (clientError != null) {
      return clientError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInitial value) initial,
    required TResult Function(_AuthStateData value) data,
    required TResult Function(_AuthStateError value) error,
    required TResult Function(_AuthStateClientError value) clientError,
  }) {
    return clientError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateInitial value)? initial,
    TResult? Function(_AuthStateData value)? data,
    TResult? Function(_AuthStateError value)? error,
    TResult? Function(_AuthStateClientError value)? clientError,
  }) {
    return clientError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInitial value)? initial,
    TResult Function(_AuthStateData value)? data,
    TResult Function(_AuthStateError value)? error,
    TResult Function(_AuthStateClientError value)? clientError,
    required TResult orElse(),
  }) {
    if (clientError != null) {
      return clientError(this);
    }
    return orElse();
  }
}

abstract class _AuthStateClientError extends AuthState {
  factory _AuthStateClientError({required final String message}) =
      _$_AuthStateClientError;
  _AuthStateClientError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_AuthStateClientErrorCopyWith<_$_AuthStateClientError> get copyWith =>
      throw _privateConstructorUsedError;
}
