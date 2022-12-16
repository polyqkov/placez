import 'package:go_router/go_router.dart';

import 'i_app_navigation.dart';
import 'routes/app_routes.dart';

class AppNavigation implements IAppNavigation {
  final _router = GoRouter(
    routes: [
      AppRoutes.logInScreenRoute,
    ],
  );

  @override
  get router => _router;
}
