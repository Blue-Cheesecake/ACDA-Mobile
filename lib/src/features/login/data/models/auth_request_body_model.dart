import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_request_body_model.freezed.dart';
part 'auth_request_body_model.g.dart';

@freezed
class AuthRequestBodyModel with _$AuthRequestBodyModel {
  factory AuthRequestBodyModel({
    required final String email,
    required final String password,
  }) = _AuthRequestBodyModel;

  factory AuthRequestBodyModel.fromJson(Map<String, dynamic> json) => _$AuthRequestBodyModelFromJson(json);
}
