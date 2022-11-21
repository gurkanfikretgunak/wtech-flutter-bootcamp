import 'package:coursera/core/provider/multi_provider_init.dart';
import 'themes/custom_theme.dart';
import 'routes/on_generate_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: MultiProviderInit().providers,
      child: MaterialApp(
        onGenerateRoute: CustomRouter.generateRoute,
        // onUnknownRoute: CustomRouter.unknownRoute,
        initialRoute: "/",
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: CustomTheme.customThemeData(context),
      ),
    );
  }
}
