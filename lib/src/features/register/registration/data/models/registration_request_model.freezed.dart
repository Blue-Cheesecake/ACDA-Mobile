// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegistrationRequestModel _$RegistrationRequestModelFromJson(
    Map<String, dynamic> json) {
  return _RegistrationRequestModel.fromJson(json);
}

/// @nodoc
mixin _$RegistrationRequestModel {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// student id with U eg. u6388073
  String get studentId => throw _privateConstructorUsedError;
  int get facultyId => throw _privateConstructorUsedError;
  String get faceImage => throw _privateConstructorUsedError; // Base64 String
  String get croppedFaceImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationRequestModelCopyWith<RegistrationRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationRequestModelCopyWith<$Res> {
  factory $RegistrationRequestModelCopyWith(RegistrationRequestModel value,
          $Res Function(RegistrationRequestModel) then) =
      _$RegistrationRequestModelCopyWithImpl<$Res, RegistrationRequestModel>;
  @useResult
  $Res call(
      {String email,
      String password,
      String studentId,
      int facultyId,
      String faceImage,
      String croppedFaceImage});
}

/// @nodoc
class _$RegistrationRequestModelCopyWithImpl<$Res,
        $Val extends RegistrationRequestModel>
    implements $RegistrationRequestModelCopyWith<$Res> {
  _$RegistrationRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? studentId = null,
    Object? facultyId = null,
    Object? faceImage = null,
    Object? croppedFaceImage = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      facultyId: null == facultyId
          ? _value.facultyId
          : facultyId // ignore: cast_nullable_to_non_nullable
              as int,
      faceImage: null == faceImage
          ? _value.faceImage
          : faceImage // ignore: cast_nullable_to_non_nullable
              as String,
      croppedFaceImage: null == croppedFaceImage
          ? _value.croppedFaceImage
          : croppedFaceImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegistrationRequestModelCopyWith<$Res>
    implements $RegistrationRequestModelCopyWith<$Res> {
  factory _$$_RegistrationRequestModelCopyWith(
          _$_RegistrationRequestModel value,
          $Res Function(_$_RegistrationRequestModel) then) =
      __$$_RegistrationRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      String studentId,
      int facultyId,
      String faceImage,
      String croppedFaceImage});
}

/// @nodoc
class __$$_RegistrationRequestModelCopyWithImpl<$Res>
    extends _$RegistrationRequestModelCopyWithImpl<$Res,
        _$_RegistrationRequestModel>
    implements _$$_RegistrationRequestModelCopyWith<$Res> {
  __$$_RegistrationRequestModelCopyWithImpl(_$_RegistrationRequestModel _value,
      $Res Function(_$_RegistrationRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? studentId = null,
    Object? facultyId = null,
    Object? faceImage = null,
    Object? croppedFaceImage = null,
  }) {
    return _then(_$_RegistrationRequestModel(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      facultyId: null == facultyId
          ? _value.facultyId
          : facultyId // ignore: cast_nullable_to_non_nullable
              as int,
      faceImage: null == faceImage
          ? _value.faceImage
          : faceImage // ignore: cast_nullable_to_non_nullable
              as String,
      croppedFaceImage: null == croppedFaceImage
          ? _value.croppedFaceImage
          : croppedFaceImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegistrationRequestModel implements _RegistrationRequestModel {
  _$_RegistrationRequestModel(
      {required this.email,
      required this.password,
      required this.studentId,
      required this.facultyId,
      required this.faceImage,
      required this.croppedFaceImage});

  factory _$_RegistrationRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegistrationRequestModelFromJson(json);

  @override
  final String email;
  @override
  final String password;

  /// student id with U eg. u6388073
  @override
  final String studentId;
  @override
  final int facultyId;
  @override
  final String faceImage;
// Base64 String
  @override
  final String croppedFaceImage;

  @override
  String toString() {
    return 'RegistrationRequestModel(email: $email, password: $password, studentId: $studentId, facultyId: $facultyId, faceImage: $faceImage, croppedFaceImage: $croppedFaceImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationRequestModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.facultyId, facultyId) ||
                other.facultyId == facultyId) &&
            (identical(other.faceImage, faceImage) ||
                other.faceImage == faceImage) &&
            (identical(other.croppedFaceImage, croppedFaceImage) ||
                other.croppedFaceImage == croppedFaceImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password, studentId,
      facultyId, faceImage, croppedFaceImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistrationRequestModelCopyWith<_$_RegistrationRequestModel>
      get copyWith => __$$_RegistrationRequestModelCopyWithImpl<
          _$_RegistrationRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegistrationRequestModelToJson(
      this,
    );
  }
}

abstract class _RegistrationRequestModel implements RegistrationRequestModel {
  factory _RegistrationRequestModel(
      {required final String email,
      required final String password,
      required final String studentId,
      required final int facultyId,
      required final String faceImage,
      required final String croppedFaceImage}) = _$_RegistrationRequestModel;

  factory _RegistrationRequestModel.fromJson(Map<String, dynamic> json) =
      _$_RegistrationRequestModel.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override

  /// student id with U eg. u6388073
  String get studentId;
  @override
  int get facultyId;
  @override
  String get faceImage;
  @override // Base64 String
  String get croppedFaceImage;
  @override
  @JsonKey(ignore: true)
  _$$_RegistrationRequestModelCopyWith<_$_RegistrationRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}
