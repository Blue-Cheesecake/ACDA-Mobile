import 'package:go_router/go_router.dart';

import '../../../features/dashboard/dashboard_page.dart';
import '../../../features/evaluation/evaluation_form_page.dart';
import '../../../features/login/login_page.dart';
import '../../../features/register/register_page.dart';
import 'utils/utils.dart';

class Routes {
  const Routes._();

  static dynamic list() => [
        GoRoute(
          path: RoutePath.dashboard,
          builder: (context, state) => const DashboardPage(),
        ),
        GoRoute(
          path: RoutePath.form,
          builder: (context, state) => const EvaluationFormPage(),
        ),
        GoRoute(
          path: RoutePath.login,
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          path: RoutePath.register,
          builder: (context, state) => const RegisterPage(),
        )
      ];
}
