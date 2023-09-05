import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'get_records_state.abs.freezed.dart';

@freezed
class GetRecordsState with _$GetRecordsState {
  factory GetRecordsState.initial() = _GetRecordsStateInitial;
  factory GetRecordsState.loading() = _GetRecordsStateLoading;
  factory GetRecordsState.data({required List<IEvaluationRecordEntity> records}) = _GetRecordsStateData;
  factory GetRecordsState.error() = _GetRecordsStateError;
}
