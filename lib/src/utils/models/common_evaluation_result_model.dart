import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils.dart';

part 'common_evaluation_result_model.freezed.dart';
part 'common_evaluation_result_model.g.dart';

@freezed
class CommonEvaluationResultModel with _$CommonEvaluationResultModel implements ICommonEvaluationResultEntity {
  factory CommonEvaluationResultModel({
    required final bool isPassed,
    final String? message,
  }) = _CommonEvaluationResultModel;

  factory CommonEvaluationResultModel.fromJson(Map<String, dynamic> json) =>
      _$CommonEvaluationResultModelFromJson(json);
  factory CommonEvaluationResultModel.fromEntity(ICommonEvaluationResultEntity entity) {
    return CommonEvaluationResultModel(isPassed: entity.isPassed, message: entity.message);
  }
}
