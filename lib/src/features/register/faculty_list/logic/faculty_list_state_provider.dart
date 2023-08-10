import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/core.dart';
import '../faculty_list.dart';

// Repository
final facultyListRepositoryProvider = Provider.autoDispose<IFacultyListRepository>((ref) {
  return FacultyListRepository(dataSource: FacultyListDataSource(dio: DioClient.client));
});

// Get Faculties Usecase
final getFacultiesUseCaseProvider = Provider.autoDispose<GetFacultiesUseCase>((ref) {
  final repository = ref.watch(facultyListRepositoryProvider);
  return GetFacultiesUseCase(repository: repository);
});

// State Provider
final facultyListProvider =
    StateNotifierProvider.autoDispose.family<FacultyListStateNotifier, FacultyListState, String>((ref, key) {
  final getFacultiesUseCase = ref.watch(getFacultiesUseCaseProvider);
  return FacultyListStateNotifier(getFacultiesUseCase: getFacultiesUseCase);
});
