import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utils/utils.dart';
import '../../domain/domain.dart';

part 'evaluation_record_model.freezed.dart';
part 'evaluation_record_model.g.dart';

@freezed
class EvaluationRecordModel with _$EvaluationRecordModel implements IEvaluationRecordEntity {
  factory EvaluationRecordModel({
    required final String fullBodyImage,
    required final String upperBodyImage,
    required final String studentIdCardImage,
    required final DateTime addedAt,
    required final CommonEvaluationResultModel result,
  }) = _EvaluationRecordModel;

  factory EvaluationRecordModel.fromJson(Map<String, dynamic> json) => _$EvaluationRecordModelFromJson(json);
}
