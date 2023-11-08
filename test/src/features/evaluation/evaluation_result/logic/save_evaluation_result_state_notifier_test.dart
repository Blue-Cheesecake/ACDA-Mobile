import 'package:acda_mobile/src/features/evaluation/data/data.dart';
import 'package:acda_mobile/src/features/evaluation/evaluation_result/domain/domain.dart';
import 'package:acda_mobile/src/features/evaluation/evaluation_result/logic/logic.dart';
import 'package:acda_mobile/src/utils/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockRef extends Mock implements Ref {}

class MockSaveEvaluationResultUseCase extends Mock implements SaveEvaluationResultUseCase {}

class MockSaveResultRequestModel extends Mock implements SaveResultRequestModel {}

class MockAPISimpleMessageModel extends Mock implements APISimpleMessageModel {}

class MockAnyExeption extends Mock implements AnyException {}

class MockVoidCallback extends Mock {
  void onSuccessCallback();
  void onErrorCallback();
}

void main() {
  late MockRef ref;
  late MockSaveEvaluationResultUseCase saveEvaluationResultUseCase;
  late MockSaveResultRequestModel requestModel;
  late MockAPISimpleMessageModel apiSimpleMessageModel;
  late MockVoidCallback voidCallback;
  late MockAnyExeption anyExeption;

  setUp(() {
    ref = MockRef();
    saveEvaluationResultUseCase = MockSaveEvaluationResultUseCase();
    requestModel = MockSaveResultRequestModel();
    apiSimpleMessageModel = MockAPISimpleMessageModel();
    voidCallback = MockVoidCallback();
    anyExeption = MockAnyExeption();
  });

  group('SaveEvaluationResultStateNotifier', () {
    test(
      'Given user '
      'When user save evaluation result '
      'Then system should save successfully',
      () async {
        when(() => saveEvaluationResultUseCase.execute(requestModel)).thenAnswer(
          (_) async => Result.success(apiSimpleMessageModel),
        );

        final saveEvaluationResultStateNotifier = SaveEvaluationResultStateNotifier(
          ref: ref,
          saveEvaluationResultUseCase: saveEvaluationResultUseCase,
        );
        final List<SaveEvaluationResultState> states = [];
        saveEvaluationResultStateNotifier.addListener((state) => states.add(state));

        await saveEvaluationResultStateNotifier.saveResult(
          requestModel: requestModel,
          onSuccessCallback: voidCallback.onSuccessCallback,
          onErrorCallback: voidCallback.onErrorCallback,
        );

        expect(states, [
          SaveEvaluationResultState.initial(),
          SaveEvaluationResultState.loading(),
          SaveEvaluationResultState.success(),
        ]);

        verify(() => saveEvaluationResultUseCase.execute(requestModel)).called(1);
        verify(() => voidCallback.onSuccessCallback()).called(1);
        verifyNever(() => voidCallback.onErrorCallback());
      },
    );

    test(
        'Given user '
        'When user save evaluation result with error '
        'Then system should not save result', () async {
      when(() => saveEvaluationResultUseCase.execute(requestModel)).thenAnswer((_) async => Result.error(anyExeption));

      final saveEvaluationResultStateNotifier = SaveEvaluationResultStateNotifier(
        ref: ref,
        saveEvaluationResultUseCase: saveEvaluationResultUseCase,
      );
      final List<SaveEvaluationResultState> states = [];
      saveEvaluationResultStateNotifier.addListener((state) => states.add(state));

      await saveEvaluationResultStateNotifier.saveResult(
        requestModel: requestModel,
        onSuccessCallback: voidCallback.onSuccessCallback,
        onErrorCallback: voidCallback.onErrorCallback,
      );

      expect(states, [
        SaveEvaluationResultState.initial(),
        SaveEvaluationResultState.loading(),
        SaveEvaluationResultState.error(),
      ]);

      verify(() => saveEvaluationResultUseCase.execute(requestModel)).called(1);
      verifyNever(() => voidCallback.onSuccessCallback());
      verify(() => voidCallback.onErrorCallback()).called(1);
    });
  });
}
