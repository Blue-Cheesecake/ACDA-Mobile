// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_evaluation_record_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteEvaluationRecordRequestModel _$DeleteEvaluationRecordRequestModelFromJson(
    Map<String, dynamic> json) {
  return _DeleteEvaluationRecordRequestModel.fromJson(json);
}

/// @nodoc
mixin _$DeleteEvaluationRecordRequestModel {
  List<String> get ids => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteEvaluationRecordRequestModelCopyWith<
          DeleteEvaluationRecordRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteEvaluationRecordRequestModelCopyWith<$Res> {
  factory $DeleteEvaluationRecordRequestModelCopyWith(
          DeleteEvaluationRecordRequestModel value,
          $Res Function(DeleteEvaluationRecordRequestModel) then) =
      _$DeleteEvaluationRecordRequestModelCopyWithImpl<$Res,
          DeleteEvaluationRecordRequestModel>;
  @useResult
  $Res call({List<String> ids});
}

/// @nodoc
class _$DeleteEvaluationRecordRequestModelCopyWithImpl<$Res,
        $Val extends DeleteEvaluationRecordRequestModel>
    implements $DeleteEvaluationRecordRequestModelCopyWith<$Res> {
  _$DeleteEvaluationRecordRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_value.copyWith(
      ids: null == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeleteEvaluationRecordRequestModelCopyWith<$Res>
    implements $DeleteEvaluationRecordRequestModelCopyWith<$Res> {
  factory _$$_DeleteEvaluationRecordRequestModelCopyWith(
          _$_DeleteEvaluationRecordRequestModel value,
          $Res Function(_$_DeleteEvaluationRecordRequestModel) then) =
      __$$_DeleteEvaluationRecordRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> ids});
}

/// @nodoc
class __$$_DeleteEvaluationRecordRequestModelCopyWithImpl<$Res>
    extends _$DeleteEvaluationRecordRequestModelCopyWithImpl<$Res,
        _$_DeleteEvaluationRecordRequestModel>
    implements _$$_DeleteEvaluationRecordRequestModelCopyWith<$Res> {
  __$$_DeleteEvaluationRecordRequestModelCopyWithImpl(
      _$_DeleteEvaluationRecordRequestModel _value,
      $Res Function(_$_DeleteEvaluationRecordRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_$_DeleteEvaluationRecordRequestModel(
      ids: null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeleteEvaluationRecordRequestModel
    implements _DeleteEvaluationRecordRequestModel {
  _$_DeleteEvaluationRecordRequestModel({required final List<String> ids})
      : _ids = ids;

  factory _$_DeleteEvaluationRecordRequestModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_DeleteEvaluationRecordRequestModelFromJson(json);

  final List<String> _ids;
  @override
  List<String> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString() {
    return 'DeleteEvaluationRecordRequestModel(ids: $ids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteEvaluationRecordRequestModel &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteEvaluationRecordRequestModelCopyWith<
          _$_DeleteEvaluationRecordRequestModel>
      get copyWith => __$$_DeleteEvaluationRecordRequestModelCopyWithImpl<
          _$_DeleteEvaluationRecordRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteEvaluationRecordRequestModelToJson(
      this,
    );
  }
}

abstract class _DeleteEvaluationRecordRequestModel
    implements DeleteEvaluationRecordRequestModel {
  factory _DeleteEvaluationRecordRequestModel(
          {required final List<String> ids}) =
      _$_DeleteEvaluationRecordRequestModel;

  factory _DeleteEvaluationRecordRequestModel.fromJson(
          Map<String, dynamic> json) =
      _$_DeleteEvaluationRecordRequestModel.fromJson;

  @override
  List<String> get ids;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteEvaluationRecordRequestModelCopyWith<
          _$_DeleteEvaluationRecordRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}
