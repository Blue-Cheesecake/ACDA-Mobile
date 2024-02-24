import 'package:acda_mobile/app_wd.dart';
import 'package:acda_mobile/flavors.dart';
import 'package:acda_mobile/src/core/core.dart';
import 'package:acda_mobile/src/features/evaluation/data/models/save_result_request_model.dart';
import 'package:acda_mobile/src/features/evaluation/evaluation_result/data/datasources/datasources.dart'
    as eva_datasource;
import 'package:acda_mobile/src/features/evaluation/evaluation_result/data/repositories/repositories.dart' as eva_repo;
import 'package:acda_mobile/src/features/history/data/data.dart';
import 'package:acda_mobile/src/features/history/data/repositories/repositories.dart' as hist_repo;
import 'package:acda_mobile/src/features/history/data/datasources/datasources.dart' as hist_datasource;
import 'package:acda_mobile/src/features/evaluation/evaluation_result/domain/usecases/save_evaluation_result_usecase.dart';

import 'package:acda_mobile/src/features/history/domain/usecases/delete_some_records_usecase.dart';
import 'package:acda_mobile/src/features/history/domain/usecases/get_records_usecase.dart';
import 'package:acda_mobile/src/features/history/widgets/record_card/record_cart_wd.dart';

import 'package:acda_mobile/src/features/login/data/data.dart';
import 'package:acda_mobile/src/features/login/domain/usecases/authenticate_usecase.dart';
import 'package:acda_mobile/src/keys/keys.dart';
import 'package:acda_mobile/firebase_options_stg.dart' as stg;

import 'package:acda_mobile/src/utils/utils.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('[System Testing]: Delete All Evaluations', () {
    /**
     * State
     */
    late final String invalidDressCodeMessage;
    late final int evaluationResultCardTotal;
    late final int deleteNumbers;
    late final int expectedEvaNumberLeft;

    /**
     * UseCase
     */
    late final SaveEvaluationResultUseCase saveEvaluationResultUseCase;
    late final DeleteSomeRecordsUseCase deleteSomeRecordsUseCase;
    late final GetRecordsUseCase getRecordsUseCase;
    late final AuthenticateUseCase authenticateUseCase;

    setUpAll(() async {
      // Config launch
      F.appFlavor = Flavor.stg;
      WidgetsFlutterBinding.ensureInitialized();
      AppConfig.instance.init(F.appConfigEnv);
      await Firebase.initializeApp(name: 'muic-sp-acda-stg', options: stg.DefaultFirebaseOptions.currentPlatform);

      invalidDressCodeMessage = 'Invalid Dress Code';

      authenticateUseCase = AuthenticateUseCase(
        repository: AuthRepository(dataSource: AuthRetrofitDataSource(dio: DioClient.client)),
      );
      saveEvaluationResultUseCase = SaveEvaluationResultUseCase(
        repository: eva_repo.EvaluationRecordRepository(
          dataSource: eva_datasource.EvaluationRecordRetrofitDataSource(dio: DioClient.client),
        ),
      );
      deleteSomeRecordsUseCase = DeleteSomeRecordsUseCase(
        repository: hist_repo.EvaluationRecordRepository(
          dataSource: hist_datasource.EvaluationRecordRetrofitDataSource(dio: DioClient.client),
        ),
      );

      final authResponse = await authenticateUseCase.execute(
        AuthRequestBodyModel(
          studentId: DummyConstantValues.studentId,
          password: DummyConstantValues.password,
        ),
      );
      authResponse.whenOrNull(success: (res) async {
        res.whenOrNull(success: (data) async {
          await ACDAUser.instance.writeToken(data.token);
        });
      });

      // Setup Evaluation Results
      evaluationResultCardTotal = 3;
      deleteNumbers = 3;
      expectedEvaNumberLeft = evaluationResultCardTotal - deleteNumbers;
      await saveEvaluationResultUseCase.execute(
        SaveResultRequestModel(
          fullBodyImage: DummyConstantValues.imageBase64,
          upperBodyImage: DummyConstantValues.imageBase64,
          studentIdCardImage: DummyConstantValues.imageBase64,
          result: CommonEvaluationResultModel(isPassed: false, message: invalidDressCodeMessage),
        ),
      );
      await saveEvaluationResultUseCase.execute(
        SaveResultRequestModel(
          fullBodyImage: DummyConstantValues.imageBase64,
          upperBodyImage: DummyConstantValues.imageBase64,
          studentIdCardImage: DummyConstantValues.imageBase64,
          result: CommonEvaluationResultModel(isPassed: true),
        ),
      );
      await saveEvaluationResultUseCase.execute(
        SaveResultRequestModel(
          fullBodyImage: DummyConstantValues.imageBase64,
          upperBodyImage: DummyConstantValues.imageBase64,
          studentIdCardImage: DummyConstantValues.imageBase64,
          result: CommonEvaluationResultModel(isPassed: true),
        ),
      );
    });

    testWidgets(
        'Given user and three evaluation results '
        'When user delete all evaluations '
        "Then system should delete and there're no cards left", (tester) async {
      runApp(const ProviderScope(child: AppWD()));
      await tester.pumpAndSettle();

      final usernameFieldWD = find.byKey(AuthenticationKeys.usernameFieldWD);
      final passwordFieldWD = find.byKey(AuthenticationKeys.passwordFieldWD);
      final loginButtonWD = find.byKey(AuthenticationKeys.loginButtonWD);
      expect(usernameFieldWD, findsOneWidget);
      expect(passwordFieldWD, findsOneWidget);
      expect(loginButtonWD, findsOneWidget);

      // Step 2
      await tester.enterText(usernameFieldWD, DummyConstantValues.studentId);
      await tester.enterText(passwordFieldWD, DummyConstantValues.password);
      await tester.pumpAndSettle();

      // Step 3
      await tester.tap(loginButtonWD);
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 1, milliseconds: 500));

      // Step 4
      final historyButtonNavBarWD = find.byKey(CentralKeys.historyButtonNavBarWD);
      expect(historyButtonNavBarWD, findsOneWidget);

      await tester.tap(historyButtonNavBarWD);
      await tester.pumpAndSettle();

      // Step 5
      final actionBarButtonWD = find.byKey(HistoryPageKeys.actionBarWD);
      expect(actionBarButtonWD, findsOneWidget);

      await tester.tap(actionBarButtonWD);
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(milliseconds: 250));

      // Step 6
      final deleteManagementButtonWD = find.byKey(HistoryPageKeys.deleteManagementButtonWD);
      expect(deleteManagementButtonWD, findsOneWidget);

      await tester.tap(deleteManagementButtonWD);
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(milliseconds: 250));

      // Step 7
      final selectAllButtonInDelModeWD = find.byKey(HistoryPageKeys.deSelectAllButtonInDelModeWD);
      expect(selectAllButtonInDelModeWD, findsOneWidget);

      await tester.tap(selectAllButtonInDelModeWD);
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(milliseconds: 250));

      // Step 8
      final deleteButtonInDelModeWD = find.byKey(HistoryPageKeys.deleteButtonInDelModeWD);
      expect(deleteButtonInDelModeWD, findsOneWidget);

      await tester.tap(deleteButtonInDelModeWD);
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(milliseconds: 250));

      // Step 9
      final deleteButtonPopupWD = find.byKey(HistoryPageKeys.deleteButtonInPopupWD);
      expect(deleteButtonPopupWD, findsOneWidget);

      await tester.tap(deleteButtonPopupWD);
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(milliseconds: 250));

      // Step 9 Verification
      final evaCardsWD = find.byType(RecordCartWD);
      expect(evaCardsWD, findsNWidgets(expectedEvaNumberLeft));
    });

    tearDown(() async {
      getRecordsUseCase = GetRecordsUseCase(
          repository: hist_repo.EvaluationRecordRepository(
        dataSource: hist_datasource.EvaluationRecordRetrofitDataSource(dio: DioClient.client),
      ));

      final response = await getRecordsUseCase.execute(EvaluationRecordRequestParams());

      response.whenOrNull(success: (data) async {
        final idsList = data.map((e) => e.id).toList();
        await deleteSomeRecordsUseCase.execute(DeleteEvaluationRecordRequestModel(ids: idsList));
      });
    });
  });
}
