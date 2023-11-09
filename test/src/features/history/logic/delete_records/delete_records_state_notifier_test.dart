import 'package:acda_mobile/src/features/history/data/data.dart';
import 'package:acda_mobile/src/features/history/domain/domain.dart';
import 'package:acda_mobile/src/features/history/logic/logic.dart';
import 'package:acda_mobile/src/utils/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockRef extends Mock implements Ref {}

class MockDeleteSomeRecordsUseCase extends Mock implements DeleteSomeRecordsUseCase {}

class MockDeleteEvaluationRecordRequestModel extends Mock implements DeleteEvaluationRecordRequestModel {}

class MockHistoryModeStateNotifier extends Mock implements HistoryModeStateNotifier {}

class MockGetRecordsStateNotifier extends Mock implements GetRecordsStateNotifier {}

class MockHistoryInputState extends Mock implements HistoryInputState {}

class MockAnyException extends Mock implements AnyException {}

void main() {
  late MockRef ref;
  late MockDeleteSomeRecordsUseCase deleteSomeRecordsUseCase;
  late MockDeleteEvaluationRecordRequestModel requestModel;
  late MockHistoryModeStateNotifier historyModeStateNotifier;
  late MockGetRecordsStateNotifier getRecordsStateNotifier;
  late MockHistoryInputState historyInputState;
  late MockAnyException anyException;

  setUpAll(() {
    registerFallbackValue(historyInputStateProvider.select((value) => value.deleteRequestParams));
  });

  setUp(() {
    ref = MockRef();
    deleteSomeRecordsUseCase = MockDeleteSomeRecordsUseCase();
    requestModel = MockDeleteEvaluationRecordRequestModel();
    historyModeStateNotifier = MockHistoryModeStateNotifier();
    getRecordsStateNotifier = MockGetRecordsStateNotifier();
    historyInputState = MockHistoryInputState();
    anyException = MockAnyException();
  });

  group('DeleteRecordsStateNotifier', () {
    test(
        'Given delete request parameters '
        'When user call deleteSomeRecords '
        'Then system should delete record successfully', () async {
      when(() => ref.read(historyInputStateProvider)).thenReturn(historyInputState);
      when(() => historyInputState.deleteRequestParams).thenReturn(requestModel);
      when(() => deleteSomeRecordsUseCase.execute(requestModel)).thenAnswer((_) async => const Result.success(null));
      when(() => ref.read(historyModeStateProvider.notifier)).thenReturn(historyModeStateNotifier);
      when(() => getRecordsStateNotifier.fetchRecords()).thenAnswer((_) async {});
      when(() => ref.read(getRecordsStateProvider.notifier)).thenReturn(getRecordsStateNotifier);

      final deleteRecordsStateNotifier = DeleteRecordsStateNotifier(
        ref: ref,
        deleteSomeRecordsUseCase: deleteSomeRecordsUseCase,
      );
      final List<DeleteRecordsState> states = [];
      deleteRecordsStateNotifier.addListener((state) => states.add(state));

      await deleteRecordsStateNotifier.deleteSomeRecords();

      expect(states, [
        DeleteRecordsState.initial(),
        DeleteRecordsState.loading(),
        DeleteRecordsState.success(),
      ]);

      verify(() => deleteSomeRecordsUseCase.execute(requestModel)).called(1);
      verify(() => historyModeStateNotifier.leaveDeletingMode()).called(1);
      verify(() => getRecordsStateNotifier.fetchRecords()).called(1);
    });

    test(
        'Given delete request parameters '
        'When user call deleteSomeRecords with some error '
        'Then system should throw an error state', () async {
      when(() => ref.read(historyInputStateProvider)).thenReturn(historyInputState);
      when(() => historyInputState.deleteRequestParams).thenReturn(requestModel);
      when(() => deleteSomeRecordsUseCase.execute(requestModel)).thenAnswer((_) async => Result.error(anyException));
      when(() => ref.read(historyModeStateProvider.notifier)).thenReturn(historyModeStateNotifier);

      final deleteRecordsStateNotifier = DeleteRecordsStateNotifier(
        ref: ref,
        deleteSomeRecordsUseCase: deleteSomeRecordsUseCase,
      );
      final List<DeleteRecordsState> states = [];
      deleteRecordsStateNotifier.addListener((state) => states.add(state));

      await deleteRecordsStateNotifier.deleteSomeRecords();

      expect(states, [
        DeleteRecordsState.initial(),
        DeleteRecordsState.loading(),
        DeleteRecordsState.error(),
      ]);

      verify(() => deleteSomeRecordsUseCase.execute(requestModel)).called(1);
      verify(() => historyModeStateNotifier.leaveDeletingMode()).called(1);
    });
  });
}
