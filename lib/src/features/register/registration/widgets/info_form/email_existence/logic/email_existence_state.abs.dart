import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_existence_state.abs.freezed.dart';

@freezed
class EmailExistenceState with _$EmailExistenceState {
  const EmailExistenceState._();

  factory EmailExistenceState.initial() = _EmailExistenceStateInitial;
  factory EmailExistenceState.loading() = _EmailExistenceStateLoading;
  factory EmailExistenceState.data({required bool isExist}) = _EmailExistenceStateData;
  factory EmailExistenceState.error() = _EmailExistenceStateError;
}
