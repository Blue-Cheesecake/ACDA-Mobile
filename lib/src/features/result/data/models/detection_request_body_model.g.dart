// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detection_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetectionRequestBodyModel _$$_DetectionRequestBodyModelFromJson(
        Map<String, dynamic> json) =>
    _$_DetectionRequestBodyModel(
      bodyImage: json['bodyImage'] as String,
      bottomImage: json['bottomImage'] as String,
      shoesImage: json['shoesImage'] as String,
    );

Map<String, dynamic> _$$_DetectionRequestBodyModelToJson(
        _$_DetectionRequestBodyModel instance) =>
    <String, dynamic>{
      'bodyImage': instance.bodyImage,
      'bottomImage': instance.bottomImage,
      'shoesImage': instance.shoesImage,
    };
