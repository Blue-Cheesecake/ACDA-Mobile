import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utils/utils.dart';

part 'faculty_list_state.abs.freezed.dart';

@freezed
class FacultyListState with _$FacultyListState {
  factory FacultyListState.initial() = _FacultyListStateInitial;
  factory FacultyListState.data({required List<ICommonCategoryValueEntity> data}) = _FacultyListStateData;
  factory FacultyListState.error() = _FacultyListStateError;
}
