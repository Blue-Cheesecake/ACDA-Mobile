import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/utils.dart';

part 'save_result_request_model.freezed.dart';
part 'save_result_request_model.g.dart';

@freezed
class SaveResultRequestModel with _$SaveResultRequestModel {
  factory SaveResultRequestModel({
    required final String fullBodyimage,
    required final String upperBodyImage,
    required final String studentIdCardImage,
    required final CommonEvaluationResultModel result,
  }) = _SaveResultRequestModel;

  factory SaveResultRequestModel.fromJson(Map<String, dynamic> json) => _$SaveResultRequestModelFromJson(json);
}