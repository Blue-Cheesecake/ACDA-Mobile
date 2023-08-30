// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_info_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BasicInfoDataState {
  String get name => throw _privateConstructorUsedError;
  String get faculty => throw _privateConstructorUsedError;
  int get numPassed => throw _privateConstructorUsedError;
  int get numFailed => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasicInfoDataStateCopyWith<BasicInfoDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicInfoDataStateCopyWith<$Res> {
  factory $BasicInfoDataStateCopyWith(
          BasicInfoDataState value, $Res Function(BasicInfoDataState) then) =
      _$BasicInfoDataStateCopyWithImpl<$Res, BasicInfoDataState>;
  @useResult
  $Res call(
      {String name, String faculty, int numPassed, int numFailed, int total});
}

/// @nodoc
class _$BasicInfoDataStateCopyWithImpl<$Res, $Val extends BasicInfoDataState>
    implements $BasicInfoDataStateCopyWith<$Res> {
  _$BasicInfoDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? faculty = null,
    Object? numPassed = null,
    Object? numFailed = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      faculty: null == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as String,
      numPassed: null == numPassed
          ? _value.numPassed
          : numPassed // ignore: cast_nullable_to_non_nullable
              as int,
      numFailed: null == numFailed
          ? _value.numFailed
          : numFailed // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BasicInfoDataStateCopyWith<$Res>
    implements $BasicInfoDataStateCopyWith<$Res> {
  factory _$$_BasicInfoDataStateCopyWith(_$_BasicInfoDataState value,
          $Res Function(_$_BasicInfoDataState) then) =
      __$$_BasicInfoDataStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String faculty, int numPassed, int numFailed, int total});
}

/// @nodoc
class __$$_BasicInfoDataStateCopyWithImpl<$Res>
    extends _$BasicInfoDataStateCopyWithImpl<$Res, _$_BasicInfoDataState>
    implements _$$_BasicInfoDataStateCopyWith<$Res> {
  __$$_BasicInfoDataStateCopyWithImpl(
      _$_BasicInfoDataState _value, $Res Function(_$_BasicInfoDataState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? faculty = null,
    Object? numPassed = null,
    Object? numFailed = null,
    Object? total = null,
  }) {
    return _then(_$_BasicInfoDataState(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      faculty: null == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as String,
      numPassed: null == numPassed
          ? _value.numPassed
          : numPassed // ignore: cast_nullable_to_non_nullable
              as int,
      numFailed: null == numFailed
          ? _value.numFailed
          : numFailed // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BasicInfoDataState implements _BasicInfoDataState {
  _$_BasicInfoDataState(
      {this.name = '----',
      this.faculty = '----',
      this.numPassed = 0,
      this.numFailed = 0,
      this.total = 0});

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String faculty;
  @override
  @JsonKey()
  final int numPassed;
  @override
  @JsonKey()
  final int numFailed;
  @override
  @JsonKey()
  final int total;

  @override
  String toString() {
    return 'BasicInfoDataState(name: $name, faculty: $faculty, numPassed: $numPassed, numFailed: $numFailed, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasicInfoDataState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.faculty, faculty) || other.faculty == faculty) &&
            (identical(other.numPassed, numPassed) ||
                other.numPassed == numPassed) &&
            (identical(other.numFailed, numFailed) ||
                other.numFailed == numFailed) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, faculty, numPassed, numFailed, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BasicInfoDataStateCopyWith<_$_BasicInfoDataState> get copyWith =>
      __$$_BasicInfoDataStateCopyWithImpl<_$_BasicInfoDataState>(
          this, _$identity);
}

abstract class _BasicInfoDataState implements BasicInfoDataState {
  factory _BasicInfoDataState(
      {final String name,
      final String faculty,
      final int numPassed,
      final int numFailed,
      final int total}) = _$_BasicInfoDataState;

  @override
  String get name;
  @override
  String get faculty;
  @override
  int get numPassed;
  @override
  int get numFailed;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_BasicInfoDataStateCopyWith<_$_BasicInfoDataState> get copyWith =>
      throw _privateConstructorUsedError;
}
