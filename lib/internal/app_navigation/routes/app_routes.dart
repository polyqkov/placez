import 'package:go_router/go_router.dart';

import '../../../presentation/screens/home_screen.dart';

class AppRoutes {
  static final homeRoute = GoRoute(
    path: '/',
    builder: (context, state) => HomeScreen(),
  );
}
