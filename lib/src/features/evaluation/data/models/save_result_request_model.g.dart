// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_result_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SaveResultRequestModel _$$_SaveResultRequestModelFromJson(
        Map<String, dynamic> json) =>
    _$_SaveResultRequestModel(
      fullBodyImage: json['fullBodyImage'] as String,
      upperBodyImage: json['upperBodyImage'] as String,
      studentIdCardImage: json['studentIdCardImage'] as String,
      result: CommonEvaluationResultModel.fromJson(
          json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SaveResultRequestModelToJson(
        _$_SaveResultRequestModel instance) =>
    <String, dynamic>{
      'fullBodyImage': instance.fullBodyImage,
      'upperBodyImage': instance.upperBodyImage,
      'studentIdCardImage': instance.studentIdCardImage,
      'result': instance.result,
    };
