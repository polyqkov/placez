import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';

import '../../common/app_icons.dart';
import '../../screens/categories_screen_view.dart';
import '../../screens/favorites_screen_view.dart';
import '../../screens/home_screen_view.dart';
import '../../screens/log_in_screen_view.dart';
import '../../screens/name_surname_screen_view.dart';
import '../../screens/otp_screen_view.dart';
import '../../screens/profile_screen_view.dart';
import '../../screens/start_screen_view.dart';
import '../../screens/welcome_screen_view.dart';
import '../../widgets/base/app_scaffold_with_bottom_tab_bar.dart';

class AppRoutes {
  static final startScreenRoute = VWidget(
    path: '/start_screen',
    widget: StartScreenView(),
    stackedRoutes: [logInScreenRoute],
  );
  static final logInScreenRoute = VWidget(
    path: 'log_in_screen',
    widget: LogInScreenView(),
    stackedRoutes: [otpScreenRoute],
  );
  static final otpScreenRoute = VWidget(
    path: 'otp_screen',
    widget: OtpScreenView(),
    stackedRoutes: [nameSurnameScreenRoute],
  );
  static final nameSurnameScreenRoute = VWidget(
    path: 'name_surname_screen',
    widget: NameSurnameScreenView(),
    stackedRoutes: [welcomeScreenRoute],
  );
  static final welcomeScreenRoute = VWidget(
    path: 'welcome_screen',
    widget: WelcomeScreenView(),
  );
  static final homeScreenRoute = VWidget(
    path: 'home_screen',
    buildTransition: (animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
    widget: HomeScreenView(),
  );
  static final categoriesScreenRoute = VWidget(
    path: 'categories_screen',
    buildTransition: (animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
    widget: CategoriesScreenView(),
  );
  static final favoritesScreenRoute = VWidget(
    path: 'favorites_screen',
    buildTransition: (animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
    widget: FavoritesScreenView(),
  );
  static final profileScreenRoute = VWidget(
    path: 'profile_screen',
    buildTransition: (animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
    widget: ProfileScreenView(),
  );
  static final mainNester = VNester(
    path: '/',
    widgetBuilder: (child) => AppScaffoldWithBottomTabBar(child: child),
    nestedRoutes: [
      homeScreenRoute,
      categoriesScreenRoute,
      favoritesScreenRoute,
      profileScreenRoute,
    ],
  );
}
