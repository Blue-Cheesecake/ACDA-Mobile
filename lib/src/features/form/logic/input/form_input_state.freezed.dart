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
  List<String> get topImages => throw _privateConstructorUsedError;
  List<String> get bottomImages => throw _privateConstructorUsedError;
  List<String> get shoesImages => throw _privateConstructorUsedError;

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
      List<String> topImages,
      List<String> bottomImages,
      List<String> shoesImages});
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
    Object? topImages = null,
    Object? bottomImages = null,
    Object? shoesImages = null,
  }) {
    return _then(_value.copyWith(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      topImages: null == topImages
          ? _value.topImages
          : topImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bottomImages: null == bottomImages
          ? _value.bottomImages
          : bottomImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      shoesImages: null == shoesImages
          ? _value.shoesImages
          : shoesImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      List<String> topImages,
      List<String> bottomImages,
      List<String> shoesImages});
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
    Object? topImages = null,
    Object? bottomImages = null,
    Object? shoesImages = null,
  }) {
    return _then(_$_FormInputState(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      topImages: null == topImages
          ? _value._topImages
          : topImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bottomImages: null == bottomImages
          ? _value._bottomImages
          : bottomImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      shoesImages: null == shoesImages
          ? _value._shoesImages
          : shoesImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_FormInputState implements _FormInputState {
  _$_FormInputState(
      {required this.label,
      required final List<String> topImages,
      required final List<String> bottomImages,
      required final List<String> shoesImages})
      : _topImages = topImages,
        _bottomImages = bottomImages,
        _shoesImages = shoesImages;

  @override
  final String? label;
  final List<String> _topImages;
  @override
  List<String> get topImages {
    if (_topImages is EqualUnmodifiableListView) return _topImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topImages);
  }

  final List<String> _bottomImages;
  @override
  List<String> get bottomImages {
    if (_bottomImages is EqualUnmodifiableListView) return _bottomImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bottomImages);
  }

  final List<String> _shoesImages;
  @override
  List<String> get shoesImages {
    if (_shoesImages is EqualUnmodifiableListView) return _shoesImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shoesImages);
  }

  @override
  String toString() {
    return 'FormInputState(label: $label, topImages: $topImages, bottomImages: $bottomImages, shoesImages: $shoesImages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormInputState &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality()
                .equals(other._topImages, _topImages) &&
            const DeepCollectionEquality()
                .equals(other._bottomImages, _bottomImages) &&
            const DeepCollectionEquality()
                .equals(other._shoesImages, _shoesImages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      label,
      const DeepCollectionEquality().hash(_topImages),
      const DeepCollectionEquality().hash(_bottomImages),
      const DeepCollectionEquality().hash(_shoesImages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormInputStateCopyWith<_$_FormInputState> get copyWith =>
      __$$_FormInputStateCopyWithImpl<_$_FormInputState>(this, _$identity);
}

abstract class _FormInputState implements FormInputState {
  factory _FormInputState(
      {required final String? label,
      required final List<String> topImages,
      required final List<String> bottomImages,
      required final List<String> shoesImages}) = _$_FormInputState;

  @override
  String? get label;
  @override
  List<String> get topImages;
  @override
  List<String> get bottomImages;
  @override
  List<String> get shoesImages;
  @override
  @JsonKey(ignore: true)
  _$$_FormInputStateCopyWith<_$_FormInputState> get copyWith =>
      throw _privateConstructorUsedError;
}
