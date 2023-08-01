// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_input_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterInputState {
  String? get searchText => throw _privateConstructorUsedError;
  FilterSectionEnum get filterSection => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterInputStateCopyWith<FilterInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterInputStateCopyWith<$Res> {
  factory $FilterInputStateCopyWith(
          FilterInputState value, $Res Function(FilterInputState) then) =
      _$FilterInputStateCopyWithImpl<$Res, FilterInputState>;
  @useResult
  $Res call({String? searchText, FilterSectionEnum filterSection});
}

/// @nodoc
class _$FilterInputStateCopyWithImpl<$Res, $Val extends FilterInputState>
    implements $FilterInputStateCopyWith<$Res> {
  _$FilterInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = freezed,
    Object? filterSection = null,
  }) {
    return _then(_value.copyWith(
      searchText: freezed == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
      filterSection: null == filterSection
          ? _value.filterSection
          : filterSection // ignore: cast_nullable_to_non_nullable
              as FilterSectionEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilterInputStateCopyWith<$Res>
    implements $FilterInputStateCopyWith<$Res> {
  factory _$$_FilterInputStateCopyWith(
          _$_FilterInputState value, $Res Function(_$_FilterInputState) then) =
      __$$_FilterInputStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? searchText, FilterSectionEnum filterSection});
}

/// @nodoc
class __$$_FilterInputStateCopyWithImpl<$Res>
    extends _$FilterInputStateCopyWithImpl<$Res, _$_FilterInputState>
    implements _$$_FilterInputStateCopyWith<$Res> {
  __$$_FilterInputStateCopyWithImpl(
      _$_FilterInputState _value, $Res Function(_$_FilterInputState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = freezed,
    Object? filterSection = null,
  }) {
    return _then(_$_FilterInputState(
      searchText: freezed == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
      filterSection: null == filterSection
          ? _value.filterSection
          : filterSection // ignore: cast_nullable_to_non_nullable
              as FilterSectionEnum,
    ));
  }
}

/// @nodoc

class _$_FilterInputState implements _FilterInputState {
  _$_FilterInputState(
      {this.searchText, this.filterSection = FilterSectionEnum.all});

  @override
  final String? searchText;
  @override
  @JsonKey()
  final FilterSectionEnum filterSection;

  @override
  String toString() {
    return 'FilterInputState(searchText: $searchText, filterSection: $filterSection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterInputState &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.filterSection, filterSection) ||
                other.filterSection == filterSection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchText, filterSection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterInputStateCopyWith<_$_FilterInputState> get copyWith =>
      __$$_FilterInputStateCopyWithImpl<_$_FilterInputState>(this, _$identity);
}

abstract class _FilterInputState implements FilterInputState {
  factory _FilterInputState(
      {final String? searchText,
      final FilterSectionEnum filterSection}) = _$_FilterInputState;

  @override
  String? get searchText;
  @override
  FilterSectionEnum get filterSection;
  @override
  @JsonKey(ignore: true)
  _$$_FilterInputStateCopyWith<_$_FilterInputState> get copyWith =>
      throw _privateConstructorUsedError;
}