import 'package:coursera/views/bottom_nav_bar/drawer/theme/theme_setting_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';

import 'init/routes/on_generate_routes.dart';
import 'init/themes/custom_theme.dart';
import 'provider/multi_provider_init.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: MultiProviderInit().providers,
      child: Consumer<ThemeSettingViewModel>(
        builder: (context, value, child) {
          return MaterialApp(
            onGenerateRoute: NavigationRoute.instance.generateRoute,
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: Hive.box("themedata").get('darkmode', defaultValue: false)
                ? ThemeData(brightness: Brightness.dark)
                : CustomTheme.customThemeData(context),
          );
        },
      ),
    );
  }
}
