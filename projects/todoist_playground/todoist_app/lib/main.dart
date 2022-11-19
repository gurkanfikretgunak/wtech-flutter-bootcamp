import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoist_app/core/provider/service_provider.dart';
import 'package:todoist_app/core/provider/theme_change_provider.dart';
import 'package:todoist_app/core/provider/validation_provider.dart';
import 'package:todoist_app/core/themes/custom_themes.dart';
import 'package:todoist_app/views/splash/splash_screen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ServiceProvider()),
          ChangeNotifierProvider(create: (_) => FormProvider()),
          ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ],
        child: Consumer<ThemeProvider>(
          builder: (context, value, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Todoist App',
              themeMode: value.selectedThemeMode,
              theme: CustomTheme.customLightThemeData(),
              darkTheme: ThemeData(
                brightness: Brightness.dark,
              ),
              home: const SplashScreen(),
            );
          },
        ));
  }
}
