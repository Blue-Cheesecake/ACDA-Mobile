import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'auth_token_model.freezed.dart';
part 'auth_token_model.g.dart';

@freezed
class AuthTokenModel with _$AuthTokenModel implements IAuthTokenEntity {
  factory AuthTokenModel({required final String token}) = _AuthTokenModel;

  factory AuthTokenModel.fromJson(Map<String, dynamic> json) => _$AuthTokenModelFromJson(json);
}
