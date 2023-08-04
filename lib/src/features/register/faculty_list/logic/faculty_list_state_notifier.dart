import '../../../../utils/utils.dart';
import '../faculty_list.dart';

class FacultyListStateNotifier extends ACDAStateNotifier<FacultyListState> {
  FacultyListStateNotifier({required this.getFacultiesUseCase}) : super(FacultyListState.initial());

  final GetFacultiesUseCase getFacultiesUseCase;

  Future<void> getFaculties() async {
    final response = await getFacultiesUseCase.execute(null);

    response.when(
      success: (data) {
        safeState = FacultyListState.data(data: data);
      },
      error: (error) {
        safeState = FacultyListState.error();
      },
    );
  }
}
