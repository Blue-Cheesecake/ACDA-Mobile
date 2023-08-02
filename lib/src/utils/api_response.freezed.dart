// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$APIResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(APISimpleMessageModel errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(APISimpleMessageModel errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(APISimpleMessageModel errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(APIAccepted<T> value) success,
    required TResult Function(APIError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(APIAccepted<T> value)? success,
    TResult? Function(APIError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(APIAccepted<T> value)? success,
    TResult Function(APIError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIResponseCopyWith<T, $Res> {
  factory $APIResponseCopyWith(
          APIResponse<T> value, $Res Function(APIResponse<T>) then) =
      _$APIResponseCopyWithImpl<T, $Res, APIResponse<T>>;
}

/// @nodoc
class _$APIResponseCopyWithImpl<T, $Res, $Val extends APIResponse<T>>
    implements $APIResponseCopyWith<T, $Res> {
  _$APIResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$APIAcceptedCopyWith<T, $Res> {
  factory _$$APIAcceptedCopyWith(
          _$APIAccepted<T> value, $Res Function(_$APIAccepted<T>) then) =
      __$$APIAcceptedCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$APIAcceptedCopyWithImpl<T, $Res>
    extends _$APIResponseCopyWithImpl<T, $Res, _$APIAccepted<T>>
    implements _$$APIAcceptedCopyWith<T, $Res> {
  __$$APIAcceptedCopyWithImpl(
      _$APIAccepted<T> _value, $Res Function(_$APIAccepted<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$APIAccepted<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$APIAccepted<T> implements APIAccepted<T> {
  const _$APIAccepted(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'APIResponse<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$APIAccepted<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$APIAcceptedCopyWith<T, _$APIAccepted<T>> get copyWith =>
      __$$APIAcceptedCopyWithImpl<T, _$APIAccepted<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(APISimpleMessageModel errorMessage) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(APISimpleMessageModel errorMessage)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(APISimpleMessageModel errorMessage)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(APIAccepted<T> value) success,
    required TResult Function(APIError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(APIAccepted<T> value)? success,
    TResult? Function(APIError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(APIAccepted<T> value)? success,
    TResult Function(APIError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class APIAccepted<T> implements APIResponse<T> {
  const factory APIAccepted(final T data) = _$APIAccepted<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$APIAcceptedCopyWith<T, _$APIAccepted<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$APIErrorCopyWith<T, $Res> {
  factory _$$APIErrorCopyWith(
          _$APIError<T> value, $Res Function(_$APIError<T>) then) =
      __$$APIErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({APISimpleMessageModel errorMessage});

  $APISimpleMessageModelCopyWith<$Res> get errorMessage;
}

/// @nodoc
class __$$APIErrorCopyWithImpl<T, $Res>
    extends _$APIResponseCopyWithImpl<T, $Res, _$APIError<T>>
    implements _$$APIErrorCopyWith<T, $Res> {
  __$$APIErrorCopyWithImpl(
      _$APIError<T> _value, $Res Function(_$APIError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$APIError<T>(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as APISimpleMessageModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $APISimpleMessageModelCopyWith<$Res> get errorMessage {
    return $APISimpleMessageModelCopyWith<$Res>(_value.errorMessage, (value) {
      return _then(_value.copyWith(errorMessage: value));
    });
  }
}

/// @nodoc

class _$APIError<T> implements APIError<T> {
  const _$APIError(this.errorMessage);

  @override
  final APISimpleMessageModel errorMessage;

  @override
  String toString() {
    return 'APIResponse<$T>.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$APIError<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$APIErrorCopyWith<T, _$APIError<T>> get copyWith =>
      __$$APIErrorCopyWithImpl<T, _$APIError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(APISimpleMessageModel errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(APISimpleMessageModel errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(APISimpleMessageModel errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(APIAccepted<T> value) success,
    required TResult Function(APIError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(APIAccepted<T> value)? success,
    TResult? Function(APIError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(APIAccepted<T> value)? success,
    TResult Function(APIError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class APIError<T> implements APIResponse<T> {
  const factory APIError(final APISimpleMessageModel errorMessage) =
      _$APIError<T>;

  APISimpleMessageModel get errorMessage;
  @JsonKey(ignore: true)
  _$$APIErrorCopyWith<T, _$APIError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
