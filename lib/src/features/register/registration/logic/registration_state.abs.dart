import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_state.abs.freezed.dart';

@freezed
class RegistrationState with _$RegistrationState {
  factory RegistrationState.initial() = _RegistrationStateInitial;
  factory RegistrationState.loading() = _RegistrationStateLoading;
  factory RegistrationState.success() = _RegistrationStateSuccess;
  factory RegistrationState.error() = _RegistrationStateError;
}
