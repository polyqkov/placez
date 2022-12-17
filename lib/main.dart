import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';

import 'firebase_options.dart';
import 'internal/app_navigation/app_navigation.dart';
import 'presentation/common/app_themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('en'),
        Locale('ru'),
      ],
      path: 'assets/localizations',
      fallbackLocale: Locale('en'),
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VRouter(
      debugShowCheckedModeBanner: false,
      theme: appLightTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      mode: VRouterMode.history,
      routes: AppNavigation().router,
    );
  }
}
