import 'package:acda_mobile/src/features/history/data/data.dart';
import 'package:acda_mobile/src/features/history/domain/domain.dart';
import 'package:acda_mobile/src/features/history/logic/logic.dart';
import 'package:acda_mobile/src/utils/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockHistoryInputState extends Mock implements HistoryInputState {}

class MockRef extends Mock implements Ref {}

class MockEvaluationRecordRequestParams extends Mock implements EvaluationRecordRequestParams {}

class MockList<IEvaluationRecordEntity> extends Mock implements List<IEvaluationRecordEntity> {}

class MockGetRecordsUseCase extends Mock implements GetRecordsUseCase {}

class MockAnyException extends Mock implements AnyException {}

void main() {
  late MockHistoryInputState historyInputState;
  late MockRef ref;
  late MockEvaluationRecordRequestParams requestParams;
  late MockGetRecordsUseCase getRecordsUseCase;
  late MockList<IEvaluationRecordEntity> data;
  late MockAnyException anyException;

  setUp(() {
    historyInputState = MockHistoryInputState();
    ref = MockRef();
    requestParams = MockEvaluationRecordRequestParams();
    getRecordsUseCase = MockGetRecordsUseCase();
    data = MockList<IEvaluationRecordEntity>();
    anyException = MockAnyException();
  });

  group('GetRecordsStateNotifier', () {
    test(
        'Given user'
        'When user call fetchRecords '
        'Then system should should fetch the records successfully', () async {
      when(() => ref.read(historyInputStateProvider)).thenReturn(historyInputState);
      when(() => historyInputState.getRequestParams).thenReturn(requestParams);
      when(() => getRecordsUseCase.execute(requestParams)).thenAnswer((_) async => Result.success(data));

      final getRecordsStateNotifier = GetRecordsStateNotifier(ref: ref, getRecordsUseCase: getRecordsUseCase);
      final List<GetRecordsState> states = [];
      getRecordsStateNotifier.addListener((state) => states.add(state));

      await getRecordsStateNotifier.fetchRecords();

      expect(states, [
        GetRecordsState.initial(),
        GetRecordsState.loading(),
        GetRecordsState.data(records: data),
      ]);

      verify(() => getRecordsUseCase.execute(requestParams)).called(1);
    });

    test(
        'Given user'
        'When user call fetchRecords with some error '
        'Then system should throw error state', () async {
      when(() => ref.read(historyInputStateProvider)).thenReturn(historyInputState);
      when(() => historyInputState.getRequestParams).thenReturn(requestParams);
      when(() => getRecordsUseCase.execute(requestParams)).thenAnswer((_) async => Result.error(anyException));

      final getRecordsStateNotifier = GetRecordsStateNotifier(ref: ref, getRecordsUseCase: getRecordsUseCase);
      final List<GetRecordsState> states = [];
      getRecordsStateNotifier.addListener((state) => states.add(state));

      await getRecordsStateNotifier.fetchRecords();

      expect(states, [
        GetRecordsState.initial(),
        GetRecordsState.loading(),
        GetRecordsState.error(),
      ]);

      verify(() => getRecordsUseCase.execute(requestParams)).called(1);
    });
  });
}
