// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evaluation_record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EvaluationRecordModel _$$_EvaluationRecordModelFromJson(
        Map<String, dynamic> json) =>
    _$_EvaluationRecordModel(
      id: json['id'] as String,
      fullBodyImage: json['fullBodyImage'] as String,
      upperBodyImage: json['upperBodyImage'] as String,
      addedAt: DateTime.parse(json['addedAt'] as String),
      result: CommonEvaluationResultModel.fromJson(
          json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EvaluationRecordModelToJson(
        _$_EvaluationRecordModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullBodyImage': instance.fullBodyImage,
      'upperBodyImage': instance.upperBodyImage,
      'addedAt': instance.addedAt.toIso8601String(),
      'result': instance.result,
    };
