import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'evaluation_result_model.freezed.dart';
part 'evaluation_result_model.g.dart';

@freezed
class EvaluationResultModel with _$EvaluationResultModel implements IEvaluationResultEntity {
  factory EvaluationResultModel({
    required final bool isPassed,
  }) = _EvaluationResultModel;

  factory EvaluationResultModel.fromJson(Map<String, dynamic> json) => _$EvaluationResultModelFromJson(json);
}
