import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../views/bottom_nav_bar/drawer/theme/theme_setting_view_model.dart';
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
            theme: value.darkTheme
                ? ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.indigo,
                    buttonTheme: const ButtonThemeData(
                      buttonColor: Colors.red,
                      textTheme: ButtonTextTheme.primary,
                    ),
                  )
                : CustomTheme.customThemeData(context),
          );
        },
      ),
    );
  }
}
