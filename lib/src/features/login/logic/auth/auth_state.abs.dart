import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'auth_state.abs.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  factory AuthState.initial() = _AuthStateInitial;
  factory AuthState.data({required IAuthTokenEntity data}) = _AuthStateData;
  factory AuthState.error() = _AuthStateError;
  factory AuthState.clientError({required String message}) = _AuthStateClientError;
}
