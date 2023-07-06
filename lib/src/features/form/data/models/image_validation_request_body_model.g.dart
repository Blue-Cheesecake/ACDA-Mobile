// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_validation_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageValidationRequestBodyModel _$$_ImageValidationRequestBodyModelFromJson(
        Map<String, dynamic> json) =>
    _$_ImageValidationRequestBodyModel(
      image: json['image'] as String,
      category: $enumDecode(_$ValidationCategoryEnumMap, json['category']),
    );

Map<String, dynamic> _$$_ImageValidationRequestBodyModelToJson(
        _$_ImageValidationRequestBodyModel instance) =>
    <String, dynamic>{
      'image': instance.image,
      'category': _$ValidationCategoryEnumMap[instance.category]!,
    };

const _$ValidationCategoryEnumMap = {
  ValidationCategory.body: 'body',
  ValidationCategory.bottom: 'bottom',
  ValidationCategory.shoes: 'shoes',
};
