import 'package:acda_mobile/src/features/dashboard/domain/domain.dart';
import 'package:acda_mobile/src/features/dashboard/logic/logic.dart';
import 'package:acda_mobile/src/utils/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockGetBasicInfoUseCase extends Mock implements GetBasicInfoUseCase {}

class MockRef extends Mock implements Ref {}

class MockIBasicInfoEntity extends Mock implements IBasicInfoEntity {}

class MockAnyException extends Mock implements AnyException {}

class MockBasicInfoDataStateNotifier extends Mock implements BasicInfoDataStateNotifier {}

void main() {
  late MockGetBasicInfoUseCase getBasicInfoUseCase;
  late MockRef ref;
  late MockAnyException anyException;
  late MockIBasicInfoEntity basicInfoEntity;
  late MockBasicInfoDataStateNotifier basicInfoDataStateNotifier;

  setUp(() {
    getBasicInfoUseCase = MockGetBasicInfoUseCase();
    ref = MockRef();
    anyException = MockAnyException();
    basicInfoEntity = MockIBasicInfoEntity();
    basicInfoDataStateNotifier = MockBasicInfoDataStateNotifier();
  });

  group('BasicInfoStateNotifier', () {
    test(
        'Given user '
        'When user enter dashboard page '
        'Then user should successfully see basic info', () async {
      when(() => getBasicInfoUseCase.execute(null)).thenAnswer((_) async => Result.success(basicInfoEntity));
      when(() => ref.read(basicInfoDataStateProvider.notifier)).thenReturn(basicInfoDataStateNotifier);

      final basicInfoStateNotifier = BasicInfoStateNotifier(ref: ref, getBasicInfoUseCase: getBasicInfoUseCase);
      final List<BasicInfoState> states = [];

      basicInfoStateNotifier.addListener((state) {
        states.add(state);
      });

      await basicInfoStateNotifier.fetchBasicInfo();

      expect(states, [
        BasicInfoState.initial(),
        BasicInfoState.data(data: basicInfoEntity),
      ]);

      verify(() => getBasicInfoUseCase.execute(null)).called(1);
    });

    test(
        'Given user '
        'When user enter dashboard page with some error on fetching '
        'Then user should not see basic info', () async {
      when(() => getBasicInfoUseCase.execute(null)).thenAnswer((_) async => Result.error(anyException));

      final basicInfoStateNotifier = BasicInfoStateNotifier(ref: ref, getBasicInfoUseCase: getBasicInfoUseCase);
      final List<BasicInfoState> states = [];

      basicInfoStateNotifier.addListener((state) {
        states.add(state);
      });

      await basicInfoStateNotifier.fetchBasicInfo();

      expect(states, [
        BasicInfoState.initial(),
        BasicInfoState.error(),
      ]);

      verify(() => getBasicInfoUseCase.execute(null)).called(1);
    });
  });
}
