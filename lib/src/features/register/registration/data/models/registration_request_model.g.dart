// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegistrationRequestModel _$$_RegistrationRequestModelFromJson(
        Map<String, dynamic> json) =>
    _$_RegistrationRequestModel(
      email: json['email'] as String,
      password: json['password'] as String,
      studentId: json['studentId'] as String,
      facultyId: json['facultyId'] as int,
      faceImage: json['faceImage'] as String,
    );

Map<String, dynamic> _$$_RegistrationRequestModelToJson(
        _$_RegistrationRequestModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'studentId': instance.studentId,
      'facultyId': instance.facultyId,
      'faceImage': instance.faceImage,
    };
