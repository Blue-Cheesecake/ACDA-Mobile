// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthRequestBodyModel _$$_AuthRequestBodyModelFromJson(
        Map<String, dynamic> json) =>
    _$_AuthRequestBodyModel(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_AuthRequestBodyModelToJson(
        _$_AuthRequestBodyModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
