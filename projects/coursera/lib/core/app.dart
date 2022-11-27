import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../views/drawer/theme_setting_view_model.dart';
import 'init/routes/on_generate_routes.dart';
import 'init/themes/custom_theme.dart';
import 'provider/multi_provider_init.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: MultiProviderInit().providers,
      child: MaterialApp(
        onGenerateRoute: NavigationRoute.instance.generateRoute,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeSettingViewModel().isDark
            ? ThemeData(
                brightness: Brightness.dark,
              )
            : ThemeData(
                brightness: Brightness.light,
                primaryColor: Colors.green,
                primarySwatch: Colors.green),
        // CustomTheme.customThemeData(context),
      ),
    );
  }
}
