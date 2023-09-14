import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_records_state.abs.freezed.dart';

@freezed
class DeleteRecordsState with _$DeleteRecordsState {
  factory DeleteRecordsState.initial() = _DeleteRecordsStateInitial;
  factory DeleteRecordsState.loading() = _DeleteRecordsStateLoading;
  factory DeleteRecordsState.success() = _DeleteRecordsStateSuccess;
  factory DeleteRecordsState.error() = _DeleteRecordsStateError;
}
