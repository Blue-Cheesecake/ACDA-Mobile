// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BasicInfoModel _$$_BasicInfoModelFromJson(Map<String, dynamic> json) =>
    _$_BasicInfoModel(
      name: json['name'] as String,
      faculty: json['faculty'] as String,
      evaluationResultHistoryNumber:
          EvaluationResultHistoryNumberModel.fromJson(
              json['evaluationResultHistoryNumber'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BasicInfoModelToJson(_$_BasicInfoModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'faculty': instance.faculty,
      'evaluationResultHistoryNumber': instance.evaluationResultHistoryNumber,
    };
