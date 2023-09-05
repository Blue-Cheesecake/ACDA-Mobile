// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evaluation_record_request_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EvaluationRecordRequestParams _$$_EvaluationRecordRequestParamsFromJson(
        Map<String, dynamic> json) =>
    _$_EvaluationRecordRequestParams(
      result: json['result'] as bool?,
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
    );

Map<String, dynamic> _$$_EvaluationRecordRequestParamsToJson(
        _$_EvaluationRecordRequestParams instance) =>
    <String, dynamic>{
      'result': instance.result,
      'fromDate': instance.fromDate?.toIso8601String(),
      'toDate': instance.toDate?.toIso8601String(),
    };
