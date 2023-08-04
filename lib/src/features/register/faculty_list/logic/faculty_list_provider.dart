import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/core.dart';
import '../faculty_list.dart';

// Repository
final facultyListRepositoryProvider = Provider<IFacultyListRepository>((ref) {
  return FacultyListRepository(dataSource: FacultyListDataSource(dio: DioClient.client));
});

// Get Faculties Usecase
final getFacultiesUseCaseProvider = Provider<GetFacultiesUseCase>((ref) {
  final repository = ref.watch(facultyListRepositoryProvider);
  return GetFacultiesUseCase(repository: repository);
});

// State Provider
final facultyListProvider = StateNotifierProvider<FacultyListStateNotifier, FacultyListState>((ref) {
  final getFacultiesUseCase = ref.watch(getFacultiesUseCaseProvider);
  return FacultyListStateNotifier(getFacultiesUseCase: getFacultiesUseCase);
});
