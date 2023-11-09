import 'package:acda_mobile/src/features/register/faculty_list/faculty_list.dart';
import 'package:acda_mobile/src/utils/utils.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockGetFacultiesUseCase extends Mock implements GetFacultiesUseCase {}

class MockList<ICommonCategoryValueEntity> extends Mock implements List<ICommonCategoryValueEntity> {}

class MockAnyException extends Mock implements AnyException {}

void main() {
  late MockGetFacultiesUseCase getFacultiesUseCase;
  late MockList<ICommonCategoryValueEntity> data;
  late MockAnyException anyException;

  setUp(() {
    getFacultiesUseCase = MockGetFacultiesUseCase();
    data = MockList<ICommonCategoryValueEntity>();
    anyException = MockAnyException();
  });

  group('FacultyListStateNotifier', () {
    test(
        'Given unregistered user '
        'When user enter register page '
        'Then the system should fetch the faculties list successfully', () async {
      when(() => getFacultiesUseCase.execute(null)).thenAnswer((_) async => Result.success(data));

      final facultyListStateNotifier = FacultyListStateNotifier(getFacultiesUseCase: getFacultiesUseCase);
      final List<FacultyListState> states = [];
      facultyListStateNotifier.addListener((state) => states.add(state));

      await facultyListStateNotifier.getFaculties();

      expect(states, [
        FacultyListState.initial(),
        FacultyListState.data(data: data),
      ]);

      verify(() => getFacultiesUseCase.execute(null)).called(1);
    });

    test(
        'Given unregistered user '
        'When user enter register page with some error '
        'Then the system should throw error state', () async {
      when(() => getFacultiesUseCase.execute(null)).thenAnswer((_) async => Result.error(anyException));

      final facultyListStateNotifier = FacultyListStateNotifier(getFacultiesUseCase: getFacultiesUseCase);
      final List<FacultyListState> states = [];
      facultyListStateNotifier.addListener((state) => states.add(state));

      await facultyListStateNotifier.getFaculties();

      expect(states, [
        FacultyListState.initial(),
        FacultyListState.error(),
      ]);

      verify(() => getFacultiesUseCase.execute(null)).called(1);
    });
  });
}
