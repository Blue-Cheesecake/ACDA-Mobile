import 'package:go_router/go_router.dart';

import '../../core.dart';
import 'routes.dart';
import 'widgets/widgets.dart';

class ACDANavigation {
  ACDANavigation._();

  static final _instance = ACDANavigation._();
  static ACDANavigation get instance => _instance;

  final _router = GoRouter(
    initialLocation: RoutePath.dashboard,
    navigatorKey: ACDAGlobalNavigatorKeys.rootNavigator,
    routes: Routes.list(),
    errorBuilder: (context, state) => const NotFoundPage(),
  );

  GoRouter get router => _router;
}

extension ACDANavigationAction on ACDANavigation {
  Future<T?> push<T extends Object?>(String location, {Object? extra}) async {
    ACDALog.print(message: 'push to $location');
    return _router.push(location, extra: extra);
  }

  Future<void> pop<T extends Object?>([T? result]) async {
    ACDALog.print(message: 'pop');
    return _router.pop(result);
  }

  Future<void> go<T extends Object?>(String location, {Object? extra}) async {
    ACDALog.print(message: 'go to $location');
    return _router.go(location);
  }
}
