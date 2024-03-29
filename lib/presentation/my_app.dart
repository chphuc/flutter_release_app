import 'package:boilerplate/constants/app_theme.dart';
import 'package:boilerplate/constants/strings.dart';
import 'package:boilerplate/presentation/login/login.dart';
import 'package:boilerplate/presentation/login/store/login_store.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:boilerplate/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../di/service_locator.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  // Create your store as a final variable in a base Widget. This works better
  // with Hot Reload than creating it directly in the `build` function.
  final UserStore _userStore = getIt<UserStore>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _userStore.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      theme: AppThemeData.lightThemeData,
      routes: Routes.routes,
      localizationsDelegates: [
        // A class which loads the translations from JSON files
        AppLocalizations.delegate,
        // Built-in localization of basic text for Material widgets
        GlobalMaterialLocalizations.delegate,
        // Built-in localization for text direction LTR/RTL
        GlobalWidgetsLocalizations.delegate,
        // Built-in localization of basic text for Cupertino widgets
        GlobalCupertinoLocalizations.delegate,
      ],
      home: LoginScreen(),
    );
  }
}
