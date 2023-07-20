import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils.dart';

part 'common_record_model.freezed.dart';

@freezed
class CommonRecordModel with _$CommonRecordModel implements ICommonRecordEntity {
  factory CommonRecordModel({
    required final String label,
    required final String bodyImageBase64,
    required final String bottomImageBase64,
    required final String shoesImageBase64,
    required final ICommonDetectionResultEntity result,
  }) = _CommonRecordModel;
}
