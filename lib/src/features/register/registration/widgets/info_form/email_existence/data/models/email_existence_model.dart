import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'email_existence_model.freezed.dart';
part 'email_existence_model.g.dart';

@freezed
class EmailExistenceModel with _$EmailExistenceModel implements IEmailExistenceEntity {
  factory EmailExistenceModel({required bool isExistent}) = _EmailExistenceModel;

  factory EmailExistenceModel.fromJson(Map<String, dynamic> json) => _$EmailExistenceModelFromJson(json);
}
