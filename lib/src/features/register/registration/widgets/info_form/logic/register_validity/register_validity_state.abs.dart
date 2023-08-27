import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_validity_state.abs.freezed.dart';

@freezed
class RegisterValidityState with _$RegisterValidityState {
  factory RegisterValidityState.initial() = _RegisterValidityStateInitial;
  factory RegisterValidityState.loading() = _RegisterValidityStateLoading;
  factory RegisterValidityState.success() = _RegisterValidityStateSuccess;
  factory RegisterValidityState.error({required String message}) = _RegisterValidityStateError;
}
