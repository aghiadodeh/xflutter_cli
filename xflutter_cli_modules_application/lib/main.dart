// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:xflutter_cli_modules_application/common/data_source/local/isar.dart';
import 'package:xflutter_cli_modules_application/common/ui/resources/themes/dark_theme.dart';
import 'package:xflutter_cli_modules_application/common/ui/resources/themes/theme.dart';
import 'package:xflutter_cli_modules_application/common/ui/resources/themes/theme_notifier.dart';
import 'package:xflutter_cli_modules_application/core/utilities/di/di.dart';
import 'common/router/app_router.dart';
import 'package:xflutter_cli_modules_application/core/events/event_bus.dart';
import 'package:xflutter_cli_modules_application/core/storage/storage.dart';
import 'package:xflutter_cli_modules_application/common/data_source/remote/app_http_client.dart';
import 'package:xflutter_cli_modules_application/core/utilities/http/http_overrides.dart';
import 'package:xflutter_cli_modules_application/core/utilities/ui/ui.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = AppHttpOverrides();
  await EasyLocalization.ensureInitialized();
  await AppStorage.initialize();
  ThemeNotifier.initialize();
  AppHttpClient.initialize();
  await AppIsar.initialize();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en')],
      path: 'assets/localization',
      fallbackLocale: const Locale('en'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    // change Material-App current theme
    eventBus.on<ThemeChangedEvent>().listen((_) => setState(() {}));

    // hide soft keyboard when (non-context class) emit event
    eventBus.on<SoftKeyboardEvent>().listen((_) => hideSoftKeyboard(context));

    // handle unauthorizedEvent
    eventBus.on<UnauthorizedEvent>().listen((_) => handleUnauthorizedEvent());

    // set application UI configuration
    runAfterBuild(() => uiConfig(context));
  }

  /// logOut
  void handleUnauthorizedEvent() async {
    // TODO: handle Unauthorized Event
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeMode = findInstance<ThemeNotifier>().themeMode.value;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => hideSoftKeyboard(context),
      child: MaterialApp.router(
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
        debugShowCheckedModeBanner: false,
        themeMode: themeMode,
        theme: lightTheme,
        darkTheme: darkTheme,
        locale: context.locale,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
      ),
    );
  }
}
