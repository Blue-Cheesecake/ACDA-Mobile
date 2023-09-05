import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils.dart';

part 'common_evaluation_result_model.freezed.dart';
part 'common_evaluation_result_model.g.dart';

@freezed
class CommonEvaluationResultModel with _$CommonEvaluationResultModel implements ICommonEvaluationResultEntity {
  factory CommonEvaluationResultModel({
    required final bool isPassed,
  }) = _CommonEvaluationResultModel;

  factory CommonEvaluationResultModel.fromJson(Map<String, dynamic> json) =>
      _$CommonEvaluationResultModelFromJson(json);
}