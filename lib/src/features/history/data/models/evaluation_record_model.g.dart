// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evaluation_record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EvaluationRecordModel _$$_EvaluationRecordModelFromJson(
        Map<String, dynamic> json) =>
    _$_EvaluationRecordModel(
      fullBodyImage: json['fullBodyImage'] as String,
      upperBodyImage: json['upperBodyImage'] as String,
      studentIdCardImage: json['studentIdCardImage'] as String,
      addedAt: DateTime.parse(json['addedAt'] as String),
      result: CommonEvaluationResultModel.fromJson(
          json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EvaluationRecordModelToJson(
        _$_EvaluationRecordModel instance) =>
    <String, dynamic>{
      'fullBodyImage': instance.fullBodyImage,
      'upperBodyImage': instance.upperBodyImage,
      'studentIdCardImage': instance.studentIdCardImage,
      'addedAt': instance.addedAt.toIso8601String(),
      'result': instance.result,
    };
