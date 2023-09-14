import 'package:go_router/go_router.dart';

import '../../../features/central/central_page.dart';
import '../../../features/evaluation/evaluation_result/data/data.dart';
import '../../../features/evaluation/evaluation_result/evaluation_result_page.dart';
import '../../../features/login/login_page.dart';
import '../../../features/register/register_page.dart';
import 'utils/utils.dart';

class Routes {
  const Routes._();

  static dynamic list() => [
        GoRoute(
          path: RoutePath.central,
          builder: (context, state) => const CentralPage(),
        ),
        GoRoute(
          path: RoutePath.login,
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          path: RoutePath.register,
          builder: (context, state) => const RegisterPage(),
        ),
        GoRoute(
          path: RoutePath.result,
          builder: (context, state) => EvaluationResultPage(completedSaveModel: state.extra as SaveResultRequestModel),
        )
      ];
}
