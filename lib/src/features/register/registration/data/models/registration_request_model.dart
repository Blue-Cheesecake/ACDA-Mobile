import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_request_model.freezed.dart';
part 'registration_request_model.g.dart';

@freezed
class RegistrationRequestModel with _$RegistrationRequestModel {
  factory RegistrationRequestModel({
    required final String email,
    required final String password,
    required final int facultyId,
    required final String faceImage, // Base64 String
  }) = _RegistrationRequestModel;

  factory RegistrationRequestModel.fromJson(Map<String, dynamic> json) => _$RegistrationRequestModelFromJson(json);
}
