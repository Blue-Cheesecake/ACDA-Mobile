import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'register_validity_result_model.freezed.dart';
part 'register_validity_result_model.g.dart';

@freezed
class RegisterValidityResultModel with _$RegisterValidityResultModel implements IRegisterValidityResultEntity {
  factory RegisterValidityResultModel({
    required final bool isValid,
  }) = _RegisterValidityResultModel;

  factory RegisterValidityResultModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterValidityResultModelFromJson(json);
}
