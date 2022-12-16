import 'package:go_router/go_router.dart';

import '../../../presentation/screens/log_in_screen_view.dart';

class AppRoutes {
  static final logInScreenRoute = GoRoute(
    path: '/',
    builder: (context, state) => LogInScreenView(),
  );
}
