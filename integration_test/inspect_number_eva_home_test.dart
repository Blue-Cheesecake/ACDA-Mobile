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

  group('[System Testing]: Inspect Number of Evaluations in Homepage', () {
    /**
     * State
     */
    late final String invalidDressCodeMessage;

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
    });

    testWidgets(
        'Given user and evaluation result '
        'When user enter the dashboard page '
        'Then user should see correct a number of evaluation results', (tester) async {
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
      await tester.pump();

      // Verify
      final passNumberWD = find.byWidgetPredicate((widget) => widget is Text && widget.data == '2');
      final failedNumberWD = find.byWidgetPredicate((widget) => widget is Text && widget.data == '1');
      final totalNumberWD = find.byWidgetPredicate((widget) => widget is Text && widget.data == '3');

      expect(passNumberWD, findsOneWidget);
      expect(failedNumberWD, findsOneWidget);
      expect(totalNumberWD, findsOneWidget);
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
