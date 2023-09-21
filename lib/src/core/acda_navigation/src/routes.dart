import 'package:go_router/go_router.dart';

import '../../../features/central/central_page.dart';
import '../../../features/evaluation/data/data.dart';
import '../../../features/evaluation/evaluation_result/evaluation_result_page.dart';
import '../../../features/history/domain/domain.dart';
import '../../../features/history/widgets/record_card/widgets/record_result/record_result_page.dart';
import '../../../features/login/login_page.dart';
import '../../../features/register/register_page.dart';
import 'utils/utils.dart';

class Routes {
  const Routes._();

  static dynamic list() => [
        GoRoute(
          path: RoutePath.central,
          builder: (context, state) => CentralPage(initialIndex: state.extra as int?),
        ),
        GoRoute(
          path: RoutePath.resultForm,
          builder: (context, state) => EvaluationResultPage(completedSaveModel: state.extra as SaveResultRequestModel),
        ),
        GoRoute(
          path: RoutePath.resultHistory,
          builder: (context, state) => RecordResultPage(data: state.extra as IEvaluationRecordEntity),
        ),
        GoRoute(
          path: RoutePath.login,
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          path: RoutePath.register,
          builder: (context, state) => const RegisterPage(),
        ),
      ];
}
