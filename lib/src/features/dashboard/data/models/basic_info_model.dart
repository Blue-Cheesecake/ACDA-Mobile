import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';
import 'models.dart';

part 'basic_info_model.freezed.dart';
part 'basic_info_model.g.dart';

@freezed
class BasicInfoModel with _$BasicInfoModel implements IBasicInfoEntity {
  factory BasicInfoModel({
    required final String name,
    required final EvaluationResultHistoryNumberModel evaluationResultHistoryNumber,
  }) = _BasicInfoModel;

  factory BasicInfoModel.fromJson(Map<String, dynamic> json) => _$BasicInfoModelFromJson(json);
}
