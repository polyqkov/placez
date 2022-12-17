import 'package:vrouter/vrouter.dart';

import '../../../presentation/screens/log_in_screen_view.dart';
import '../../../presentation/screens/otp_screen_view.dart';
import '../../../presentation/screens/start_screen_view.dart';

class AppRoutes {
  static final startScreenRoute = VWidget(
    path: '/',
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
  );
}
